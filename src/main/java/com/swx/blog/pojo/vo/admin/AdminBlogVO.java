package com.swx.blog.pojo.vo.admin;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class AdminBlogVO {

    private Long id;

    private String title;

    private String typeName;

    private Boolean recommend;

    private Boolean published;

    private LocalDateTime updateTime;


}