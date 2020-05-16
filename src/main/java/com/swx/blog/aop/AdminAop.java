package com.swx.blog.aop;

import com.swx.blog.pojo.ResponseMsg;
import com.swx.blog.pojo.User;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Aspect
@Component
public class AdminAop {

    @Pointcut("execution(* com.swx.blog.controller.admin.*.*(..)) && !execution(* com.swx.blog.controller.admin.UserController.*(..))")
    public void point(){

    }

    @Around("point()")
    public Object exception(ProceedingJoinPoint joinPoint){
        try {
            Boolean flag = beforePoint(joinPoint);
            return joinPoint.proceed();
        } catch (Throwable throwable) {
            return ResponseMsg.fail().setCode(50004).setMessage("出现意外，请重新登录");
        }
    }

    private Boolean beforePoint(ProceedingJoinPoint joinPoint) throws Exception{
        ServletRequestAttributes ra =  (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = ra.getRequest();

        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        if(user == null){
            throw new RuntimeException("用户未登录");
        } else {
            return true;
        }
    }
}
