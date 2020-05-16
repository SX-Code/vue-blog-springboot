package com.swx.blog.service.impl;

import com.swx.blog.pojo.Comment;
import com.swx.blog.mapper.CommentMapper;
import com.swx.blog.service.CommentService;
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
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements CommentService {

}
