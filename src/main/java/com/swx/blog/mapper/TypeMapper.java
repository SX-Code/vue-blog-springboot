package com.swx.blog.mapper;

import com.swx.blog.pojo.Type;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.swx.blog.pojo.vo.admin.TypeVo;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author sw-code
 * @since 2020-05-09
 */
public interface TypeMapper extends BaseMapper<Type> {

    List<TypeVo> listTypeVo();
}
