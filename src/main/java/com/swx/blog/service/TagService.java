package com.swx.blog.service;

import com.swx.blog.pojo.Tag;
import com.baomidou.mybatisplus.extension.service.IService;
import com.swx.blog.pojo.vo.admin.TagVo;
import com.swx.blog.pojo.vo.admin.TypeVo;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author sw-code
 * @since 2020-05-09
 */
public interface TagService extends IService<Tag> {

    List<TagVo> listTagVo();
}
