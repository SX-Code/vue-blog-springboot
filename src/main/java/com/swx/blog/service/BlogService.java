package com.swx.blog.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.swx.blog.pojo.Blog;
import com.baomidou.mybatisplus.extension.service.IService;
import com.swx.blog.pojo.vo.admin.AdminBlogVO;


/**
 *
 * @author sw-code
 * @since 2020-05-09
 */
public interface BlogService extends IService<Blog> {

   IPage<AdminBlogVO> listBlog(Page<AdminBlogVO> page, QueryWrapper<Blog> wrapper);
}
