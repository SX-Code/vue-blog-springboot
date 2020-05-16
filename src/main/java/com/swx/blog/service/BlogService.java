package com.swx.blog.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.swx.blog.pojo.Blog;
import com.baomidou.mybatisplus.extension.service.IService;
import com.swx.blog.pojo.vo.admin.AdminBlogVO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author sw-code
 * @since 2020-05-09
 */
public interface BlogService extends IService<Blog> {

   IPage<AdminBlogVO> listBlog(Page<AdminBlogVO> page, LambdaQueryWrapper<Blog> wrapper);

}
