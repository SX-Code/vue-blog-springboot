package com.swx.blog.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.Version;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author sw-code
 * @since 2020-05-09
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName(value = "t_blog")
public class Blog implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 是否可赞赏
     */
    private Boolean appreciate;

    /**
     * 是否可评论
     */
    private Boolean commentable;

    /**
     * 内容
     */
    private String content;

    /**
     * 描述
     */
    private String describe;

    /**
     * 创建时间
     */
    @TableField(fill = FieldFill.INSERT)
    private Integer createTime;

    /**
     * 首图
     */
    private String firstPicture;

    /**
     * 原创、转载、翻译
     */
    private String flag;

    /**
     * 是否发表（草稿）
     */
    private Boolean published;

    /**
     * 是否推荐
     */
    private Boolean recommend;

    /**
     * 是否可分享
     */
    private Boolean shareStatement;

    /**
     * 文章标题
     */
    private String title;

    /**
     * 更新时间
     */
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Integer updateTime;

    /**
     * 文章浏览数
     */
    private Integer views;

    /**
     * 类别id
     */
    private Long typeId;

    /**
     * 用户id
     */
    private Long userId;

    /**
     * 喜欢数
     */
    private Integer like;

    /**
     * 不喜欢数
     */
    private Integer unlike;

    /**
     * 逻辑删除
     */
    private Integer deleted;

    /**
     * 乐观锁
     */
    @Version
    private Integer version;

}
