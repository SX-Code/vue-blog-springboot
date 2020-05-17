package com.swx.blog.service.impl;

import com.swx.blog.pojo.Type;
import com.swx.blog.mapper.TypeMapper;
import com.swx.blog.pojo.vo.admin.TypeVo;
import com.swx.blog.service.TypeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author sw-code
 * @since 2020-05-09
 */
@Service
public class TypeServiceImpl extends ServiceImpl<TypeMapper, Type> implements TypeService {

    @Override
    public List<TypeVo> listTypeVo() {
        return baseMapper.listTypeVo();
    }
}
