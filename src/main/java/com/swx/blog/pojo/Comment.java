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
@TableName("t_comment")
public class Comment implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键ID
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 评论者头像
     */
    private String avatar;

    /**
     * 评论内容
     */
    private String content;

    /**
     * 创建时间
     */
    @TableField(fill = FieldFill.INSERT)
    private Integer createTime;

    /**
     * 评论者邮箱
     */
    private String email;

    /**
     * 评论者昵称
     */
    private String nickname;

    /**
     * 评论文章ID
     */
    private Long blogId;

    /**
     * 父评论id
     */
    private Long parentCommentId;

    /**
     * 管理员评论
     */
    private Boolean adminComment;

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
