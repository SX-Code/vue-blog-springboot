package com.swx.blog.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.swx.blog.pojo.Blog;
import com.swx.blog.mapper.BlogMapper;
import com.swx.blog.pojo.vo.admin.AdminBlogVO;
import com.swx.blog.service.BlogService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;


/**
 *
 * @author sw-code
 * @since 2020-05-09
 */
@Service
public class BlogServiceImpl extends ServiceImpl<BlogMapper, Blog> implements BlogService {

    @Override
    public IPage<AdminBlogVO> listBlog(Page<AdminBlogVO> page, QueryWrapper<Blog> wrapper) {
        return baseMapper.listBlog(page,wrapper);
    }

}
