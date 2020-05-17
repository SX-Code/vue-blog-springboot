package com.swx.blog.handler;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

@Slf4j //需要IDEA安装Lombok插件，才不会报错
@Component //把组件加到IOC容器中
public class MyMetaObjectHandler implements MetaObjectHandler {
    @Override
    public void insertFill(MetaObject metaObject) {
        log.info("自动填充时间");
        this.setFieldValByName("createTime",LocalDateTime.now(), metaObject);
        this.setFieldValByName("updateTime",LocalDateTime.now(), metaObject);
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        log.info("自动填充更新时间");
        this.setFieldValByName("updateTime", LocalDateTime.now(), metaObject);
    }
}
