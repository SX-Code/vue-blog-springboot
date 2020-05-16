package com.swx.blog.service.impl;

import com.swx.blog.pojo.Tag;
import com.swx.blog.mapper.TagMapper;
import com.swx.blog.service.TagService;
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
public class TagServiceImpl extends ServiceImpl<TagMapper, Tag> implements TagService {

}
