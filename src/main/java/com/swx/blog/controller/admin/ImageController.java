package com.swx.blog.controller.admin;

import com.swx.blog.pojo.ResponseMsg;
import com.swx.blog.service.ImageService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Controller
@RestController
@RequestMapping("/admin")
public class ImageController {

    private final ImageService imageService;

    public ImageController(ImageService imageService) {
        this.imageService = imageService;
    }

    @Value("${file.upload.path}")
    private String imagePath; // imagePath = /Users/sw-code/images/"

    @Value("${file.upload.relative-path}")
    private String relativePath; // relativePath = "/images/**"

    @PostMapping("/upload")
    public ResponseMsg upload(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
        String url = "";
        //图片真实路径 => realUploadPath = "/Users/sw-code/images/"
        String realUploadPath = imagePath;
        //图片相对路径 => path = "/image"
        String path = relativePath.substring(0,relativePath.lastIndexOf('/'));

        try {
            //获取图片路径以及压缩图片路径
            // imagePath = "/originalImages/filename.format"
            String realFilePath = imageService.generateImage(file,realUploadPath);
            // 拼接文件的网络位置 imageURL = "http://localhost:8080/image/originalImages/filename.format"
            String imageURL = request.getScheme() + "://" + request.getServerName() + ":" +
                              request.getServerPort() + path + "/" + realFilePath;

            return ResponseMsg.success().setData(imageURL).setMessage("图片上传成功");
        } catch (IOException e) {
            e.printStackTrace();
            return ResponseMsg.fail().setMessage("图片上传失败");
        }
    }
}
