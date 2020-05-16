package com.swx.blog.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Value("${file.upload.path}")
    private String imagePath;

    @Value("${file.upload.relative-path}")
    private String relativeImagePath;


    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler(relativeImagePath)
                .addResourceLocations("file:"+imagePath);
    }
}
