package com.swx.blog.mapper;

import com.swx.blog.pojo.Tag;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.swx.blog.pojo.vo.admin.TagVo;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author sw-code
 * @since 2020-05-09
 */
public interface TagMapper extends BaseMapper<Tag> {

    List<TagVo> listTagVo();
}
