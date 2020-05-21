package com.swx.blog.service.impl;

import com.swx.blog.service.ImageService;
import net.coobird.thumbnailator.Thumbnails;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;

@Service
public class ImageServiceImpl implements ImageService {

    private static final String originalImagePath = "originalImages";
    private static final String thumbImagePath = "thumbImages";

    /**
     * 将文件保存到服务器
     * @param file 文件
     * @param realUploadPath 真实路径
     * @return  文件的具体路径
     * @throws IOException  IO异常
     */
    @Override
    public String generateImage(MultipartFile file, String realUploadPath) throws IOException {
        //如果目录不存在，则创建目录
        File uploadFile = new File(realUploadPath + "/" + originalImagePath);
        if(!uploadFile.exists()) {
            uploadFile.mkdir();
        }
        // 创建输入流
        InputStream inputStream = file.getInputStream();
        // 生成输出地址
        String outputPath = realUploadPath + "/" + originalImagePath + "/" + file.getOriginalFilename();
        // 创建输出流
        OutputStream outputStream = new FileOutputStream(outputPath);
        // 保存文件
        FileCopyUtils.copy(inputStream, outputStream);

        return originalImagePath + "/" + file.getOriginalFilename();
    }

    /**
     * 生成图片缩略图
     * @param file  图片文件
     * @param realUploadPath 真实路径
     * @return  缩略图路径
     * @throws IOException  IO异常
     */
    @Override
    public String generateThumbnail(MultipartFile file, String realUploadPath) throws IOException {
        File uploadFile = new File(realUploadPath,"/" + thumbImagePath);
        if(uploadFile.exists()) {
            uploadFile.mkdir();
        }
        // 缩略图保存的地址
        String des = realUploadPath + "/"+ thumbImagePath +"/" + file.getOriginalFilename();
        Thumbnails.of(file.getInputStream()).scale(0.5).toFile(des);
        // 返回图片缩略图的路径
        return thumbImagePath + "/" + file.getOriginalFilename();
    }
}
