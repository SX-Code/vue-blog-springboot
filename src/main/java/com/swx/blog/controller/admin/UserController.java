package com.swx.blog.controller.admin;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.swx.blog.pojo.ResponseMsg;
import com.swx.blog.pojo.User;
import com.swx.blog.pojo.vo.admin.LoginVo;
import com.swx.blog.service.UserService;
import com.swx.blog.utils.JwtToken;
import com.swx.blog.utils.SHA256Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author sw-code
 * @since 2020-05-09
 */
@RestController
@RequestMapping("/admin/user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public ResponseMsg login(@RequestBody LoginVo loginVo, HttpSession session){
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.eq("username",loginVo.getUsername())
               .eq("password", SHA256Utils.getSHA256(loginVo.getPassword()));
        User user = userService.getOne(wrapper);
        if(user != null){
            //将登陆用户存入 session 中
            session.setAttribute("user",user);
            // 封装数据
            Map<String,Object> data = new HashMap<>();
            data.put("token", JwtToken.createToken(user.getUsername()));
            //返回成功信息
            return ResponseMsg.success().setData(data).setMessage("登陆成功");
        }
        //返回失败信息
        return ResponseMsg.fail().setMessage("登陆失败，用户名或密码错误");
    }

    @GetMapping("/info")
    public ResponseMsg info(HttpSession session) {

//        User user = new User();
//        user.setNickname("Super Admin");
//        user.setAvatar("https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif");
//        user.getRoles().add("admin");
        return ResponseMsg.success().setData((User)session.getAttribute("user"));
    }

    @PostMapping("/logout")
    public ResponseMsg logout(HttpSession session){

        return ResponseMsg.success().setMessage("登出成功");
    }
}

