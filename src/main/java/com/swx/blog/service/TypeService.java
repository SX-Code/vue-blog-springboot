package com.swx.blog.service;

import com.swx.blog.pojo.Type;
import com.baomidou.mybatisplus.extension.service.IService;
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
public interface TypeService extends IService<Type> {

    List<TypeVo> listTypeVo();

}
