package com.swx.blog.pojo.vo.admin;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class TagVo {

    private Long id;
    private String name;
    private Integer blogNum;
    private LocalDateTime updateTime;
}
