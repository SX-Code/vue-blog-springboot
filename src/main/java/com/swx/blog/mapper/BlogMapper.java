package com.swx.blog.mapper;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.swx.blog.pojo.Blog;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.swx.blog.pojo.vo.admin.AdminBlogVO;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author sw-code
 * @since 2020-05-09
 */
public interface BlogMapper extends BaseMapper<Blog> {

    IPage<AdminBlogVO> listBlog(Page<?> page, @Param(Constants.WRAPPER) QueryWrapper<Blog> wrapper);

    @Select("select tag_id from t_blog_tags where blog_id = #{blogId}")
    List<Long> listTagIds(Long blogId);
}
