package com.swx.blog.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.swx.blog.pojo.Blog;
import com.swx.blog.pojo.ResponseMsg;
import com.swx.blog.pojo.vo.admin.AdminBlogVO;
import com.swx.blog.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author sw-code
 * @since 2020-05-09
 */
@RestController
@RequestMapping("/admin")
public class BlogController {

    @Autowired
    private BlogService blogService;

    @GetMapping("/blog/list")
    public ResponseMsg blog(String title, Integer page, Integer size){
        LambdaQueryWrapper<Blog> wrapper = new LambdaQueryWrapper<>();
        wrapper.like(!StringUtils.isEmpty(title),Blog::getTitle, title);
        IPage<AdminBlogVO> ipage = blogService.listBlog(new Page<>(page, size),wrapper);
        return ResponseMsg.success().setData(ipage).setMessage("获取成功");
    }

}

