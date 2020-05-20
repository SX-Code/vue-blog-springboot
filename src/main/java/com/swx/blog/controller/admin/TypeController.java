package com.swx.blog.controller.admin;


import com.swx.blog.pojo.ResponseMsg;
import com.swx.blog.pojo.Type;
import com.swx.blog.pojo.vo.admin.TypeVo;
import com.swx.blog.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author sw-code
 * @since 2020-05-09
 */
@RestController
@RequestMapping("/admin/type")
public class TypeController {

    private final TypeService typeService;

    public TypeController(TypeService typeService) {
        this.typeService = typeService;
    }

    @GetMapping("/list")
    public ResponseMsg list(){
        List<TypeVo> types = typeService.listTypeVo();
        return ResponseMsg.success().setData(types);
    }

    /**
     * 新增 type
     * @param type  需要新增的 type
     * @return 消息
     */
    @PostMapping("/add")
    public ResponseMsg add(@RequestBody Type type){
        boolean b = typeService.save(type);
        System.out.println(type);
        if(b){
            return ResponseMsg.success().setData(type);
        }
        return ResponseMsg.fail().setMessage("添加失败");
    }

    /**
     * 修改type
     * @param type  需要修改的type
     * @return  消息
     */
    @PutMapping("/update")
    public ResponseMsg update(@RequestBody Type type){
        boolean b = typeService.updateById(type);
        if(b){
            return ResponseMsg.success().setData(null);
        }
        return ResponseMsg.fail();
    }

    @DeleteMapping("/delete/{id}")
    public ResponseMsg delete(@PathVariable("id") Long id) {
        boolean b = typeService.removeById(id);
        if(b){
            return ResponseMsg.success().setData(id);
        }
        return ResponseMsg.fail().setMessage("删除失败");

    }
}

