package com.swx.blog.controller.admin;


import com.swx.blog.pojo.ResponseMsg;
import com.swx.blog.pojo.Tag;
import com.swx.blog.pojo.Type;
import com.swx.blog.pojo.vo.admin.TagVo;
import com.swx.blog.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author sw-code
 * @since 2020-05-09
 */
@RestController
@RequestMapping("/admin/tag")
public class TagController {

    private final TagService tagService;

    public TagController(TagService tagService) {
        this.tagService = tagService;
    }

    @GetMapping("/list")
    public ResponseMsg list(){
        List<TagVo> tags = tagService.listTagVo();
        return ResponseMsg.success().setData(tags);
    }

    /**
     * 新增 tag
     * @param tag  需要新增的 tag
     * @return 消息
     */
    @PostMapping("/add")
    public ResponseMsg add(@RequestBody Tag tag){
        boolean b = tagService.save(tag);
        System.out.println(tag);
        if(b){
            return ResponseMsg.success().setData(tag);
        }
        return ResponseMsg.fail().setMessage("添加失败");
    }

    /**
     * tag
     * @param tag  需要修改的 tag
     * @return  消息
     */
    @PutMapping("/update")
    public ResponseMsg update(@RequestBody Tag tag){
        boolean b = tagService.updateById(tag);
        if(b){
            return ResponseMsg.success().setData(null);
        }
        return ResponseMsg.fail();
    }

    @DeleteMapping("/delete/{id}")
    public ResponseMsg delete(@PathVariable("id") Long id) {
        boolean b = tagService.removeById(id);
        if(b){
            return ResponseMsg.success().setData(id);
        }
        return ResponseMsg.fail().setMessage("删除失败");

    }
}

