package com.swx.blog.controller.admin;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.swx.blog.pojo.Blog;
import com.swx.blog.pojo.ResponseMsg;
import com.swx.blog.pojo.Tag;
import com.swx.blog.pojo.vo.admin.AdminBlogVO;
import com.swx.blog.service.BlogService;
import com.swx.blog.service.BlogTagsService;
import com.swx.blog.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author sw-code
 * @since 2020-05-09
 */
@RestController
@RequestMapping("/admin")
public class BlogController {
    private final BlogService blogService;
    private final BlogTagsService blogTagsService;
    public BlogController(BlogService blogService, BlogTagsService blogTagsService) {
        this.blogService = blogService;
        this.blogTagsService = blogTagsService;
    }

    @PutMapping("/blog/{id}")
    public ResponseMsg updateRecommend(@PathVariable Long id, Boolean recommend){
        Blog blog = new Blog();
        blog.setId(id);
        blog.setRecommend(recommend);
        boolean b = blogService.updateById(blog);
        if(b) {
            return ResponseMsg.success().setMessage("修改成功").setData(null);
        }
        return ResponseMsg.fail().setMessage("修改失败");

    }

    @DeleteMapping("/blog/{id}")
    public ResponseMsg remove(@PathVariable Long id) {
        boolean b = blogService.removeById(id);
        if(b) {
            return ResponseMsg.success().setMessage("删除成功").setData(null);
        }
        return ResponseMsg.fail().setMessage("删除失败");

    }

    @PostMapping("/blog")
    public ResponseMsg post(@RequestBody Blog blog) {
        boolean b = blogService.saveOrUpdate(blog);
        blogTagsService.handlerTags(blog.getTags(), blog.getId());
        if(b){
            return ResponseMsg.success().setData(null);
        }
        System.out.println(blog);
        return ResponseMsg.fail();
    }

    /**
     * 多条件查询博客列表
     * @param title 博客标题
     * @param page  请求的页码
     * @param size  一页数目
     * @return  分页数据
     */
    @GetMapping("/blog")
    public ResponseMsg listBlog(String title, Integer page, Integer size) {
        LambdaQueryWrapper<Blog> wrapper = new LambdaQueryWrapper<>();
        wrapper.like(!StringUtils.isEmpty(title),Blog::getTitle, title);
        IPage<AdminBlogVO> iPage = blogService.listBlog(new Page<>(page, size),wrapper);
        return ResponseMsg.success().setData(iPage).setMessage("获取成功");
    }

    @GetMapping("/blog/{id}")
    public ResponseMsg getBlog(@PathVariable("id") Long id) {
        Blog blog = blogService.getById(id);
        blog.setTags(blogTagsService.listTags(id));
        return ResponseMsg.success().setData(blog);
    }


}

