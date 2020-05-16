package com.swx.blog.aop;

import com.auth0.jwt.exceptions.JWTVerificationException;
import com.swx.blog.pojo.ResponseMsg;
import com.swx.blog.utils.JwtToken;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;

@Aspect
@Component
public class TokenVerifyAop {

    @Pointcut("execution(* com.swx.blog.controller.admin.UserController.info(..))")
    public void point(){

    }

    @Around("point()")
    public Object exception(ProceedingJoinPoint joinPoint){
        try {
            Boolean flag = beforePoint(joinPoint);
            return joinPoint.proceed();
        } catch (Throwable throwable) {
            if (throwable.getMessage().equals("null")){
                return ResponseMsg.fail().setMessage("无token").setCode(50008);
            } else if ("invalid".equals(throwable.getMessage())){
                return ResponseMsg.fail().setMessage("无效token").setCode(5008);
            }
            return ResponseMsg.fail().setMessage("token已过期，请重新登录").setCode(50014);
        }

    }

    private Boolean beforePoint(ProceedingJoinPoint joinPoint) throws Exception {
        ServletRequestAttributes ra = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        assert ra != null;
        HttpServletRequest request= ra.getRequest();

        //从 http 请求头中获取token
        String token = request.getHeader("X-Token");

        //执行认证
        if(token == null){
            throw new RuntimeException("null");
        }
        try{
            JwtToken.verifyToken(token);
        }catch (JWTVerificationException e){
            throw new RuntimeException(e.getMessage());
        }
        return true;
    }
}
