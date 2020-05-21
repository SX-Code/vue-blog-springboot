package com.swx.blog.mapper;

import com.swx.blog.pojo.BlogTags;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.Set;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author sw-code
 * @since 2020-05-21
 */
public interface BlogTagsMapper extends BaseMapper<BlogTags> {

    Integer saveBatch(Set<Long> tags, @Param("blogId") Long blogId);

    Integer removeBatch(Set<Long> tags, @Param("blogId") Long blogId);
}
