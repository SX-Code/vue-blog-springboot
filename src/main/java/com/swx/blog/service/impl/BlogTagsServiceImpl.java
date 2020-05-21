package com.swx.blog.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.swx.blog.pojo.BlogTags;
import com.swx.blog.mapper.BlogTagsMapper;
import com.swx.blog.service.BlogTagsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.sql.Wrapper;
import java.util.*;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author sw-code
 * @since 2020-05-21
 */
@Service
public class BlogTagsServiceImpl extends ServiceImpl<BlogTagsMapper, BlogTags> implements BlogTagsService {

    @Override
    public void handlerTags(Long[] tags, Long id) {
        QueryWrapper<BlogTags> wrapper = new QueryWrapper<>();
        wrapper.eq("blog_id", id);
        List<BlogTags> blogTags = this.list(wrapper);
        HashSet<Long> removeTags = new HashSet<>(); // 数组库中的 tag_id
        HashSet<Long> addTags = new HashSet<>(Arrays.asList(tags)); // 前台接受的 tag_id
        HashSet<Long> intersection = new HashSet<>(addTags); // 复制一份，用来求交集
        blogTags.forEach(item -> {
            removeTags.add(item.getTagId());
        });
        intersection.retainAll(removeTags);// 交集
        addTags.removeAll(intersection); // 需要添加的
        removeTags.removeAll(intersection); // 需要删除的

        add(addTags, id);
        remove(removeTags, id);
    }

    @Override
    public Long[] listTags(Long id) {
        List<Long> tagList = new ArrayList<>();
        // 根据 blog_id 获取标签
        QueryWrapper<BlogTags> wrapper = new QueryWrapper<>();
        wrapper.eq("blog_id", id);
        List<BlogTags> tags = this.list(wrapper);
        // 将标签的 tag_id 放入 tagArray 中
        Long[] tagArray = new Long[tags.size()];
        tags.forEach(item -> {
            tagList.add(item.getTagId());
        });
        // 返回 tag_id 数组
        return tagList.toArray(tagArray);
    }

    private void add(Set<Long> tags, Long id) {
        if(tags.size() > 0) {
            this.baseMapper.saveBatch(tags, id);
        }
    }
    private void remove(Set<Long> tags, Long id) {
        if(tags.size() > 0) {
//            this.baseMapper.removeBatch(tags, id);
            QueryWrapper<BlogTags> wrapper = new QueryWrapper<>();
            wrapper.in("tag_id",tags).eq("blog_id",id);
            this.remove(wrapper);
        }
    }
}
