package com.swx.blog.service;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

public interface ImageService {

    String generateImage(MultipartFile file, String realUploadPath) throws IOException;

    String generateThumbnail(MultipartFile file, String realUploadPath) throws IOException;

}
