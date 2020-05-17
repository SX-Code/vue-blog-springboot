package com.swx;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.swx.blog.pojo.Blog;
import com.swx.blog.pojo.Type;
import com.swx.blog.pojo.vo.admin.AdminBlogVO;
import com.swx.blog.service.BlogService;
import com.swx.blog.service.TypeService;
import com.swx.blog.utils.SHA256Utils;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.util.StringUtils;

import java.util.List;

@SpringBootTest
class NewBlogApplicationTests {

//    @Autowired
//    private BlogService blogService;

    @Autowired
    private BlogService blogService;

    @Autowired
    private TypeService typeService;

    @Test
    void testTypeService() {
//        Type type = new Type();
//        type.setId(20L);
//        boolean b = typeService.updateById(type);
//        System.out.println(b);
        boolean b = typeService.removeById(20);
        System.out.println(b);
    }

    @Test
    void contextLoads() {
        String query = "S";
        LambdaQueryWrapper<Blog> wrapper = new LambdaQueryWrapper<>();
        wrapper.like(!StringUtils.isEmpty(query),Blog::getTitle, query);
        IPage<AdminBlogVO> iPage = blogService.listBlog(new Page<>(1, 3),wrapper);
        iPage.getRecords().forEach(System.out::println);
//        System.out.println("一共 "+ iPage.getPages() +" 页");
//        System.out.println("一页显示 "+ iPage.getSize() + " 个");
//        System.out.println("一共 " + iPage.getTotal() + " 条记录");
//        System.out.println("当前第 " + iPage.getCurrent() + " 页");
        System.out.println(SHA256Utils.getSHA256("123456"));
//        List<Blog> list = blogService.list();
//        list.forEach(System.out::println);


//        System.out.println(page1);
//        QueryWrapper<Blog> wrapper = new QueryWrapper<>();
//        wrapper.select("title","type_id","recommend","published","update_time")
//                .like("title","S");
//        List<Blog> list = blogService.list(wrapper);
//        list.forEach(System.out::println);
//        Page<Blog> page = new Page<>(1,2);
//        List<Blog> blogs = blogService.listBlogByQuery(page, null);
//        blogs.forEach(System.out::println);
    }

}
