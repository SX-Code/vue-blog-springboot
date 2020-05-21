package com.swx.blog.service;

import com.swx.blog.pojo.BlogTags;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author sw-code
 * @since 2020-05-21
 */
public interface BlogTagsService extends IService<BlogTags> {

    void handlerTags(Long[] tags, Long id);

    Long[] listTags(Long id);
}
