package com.swx.blog.service.impl;

import com.swx.blog.pojo.User;
import com.swx.blog.mapper.UserMapper;
import com.swx.blog.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author sw-code
 * @since 2020-05-09
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}
