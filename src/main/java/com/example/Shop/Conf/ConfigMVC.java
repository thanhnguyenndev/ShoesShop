package com.example.Shop.Conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration //->Bao spring biet day la file cau hinh
public class ConfigMVC implements WebMvcConfigurer {
	
//	public String UPLOAD_FILE_ROOT = "ShoesShop/tree/main/upload/";
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		//classpath: src/main/resources
		registry.addResourceHandler("/user/**").addResourceLocations("classpath:/static/user/");
		registry.addResourceHandler("/manager/**").addResourceLocations("classpath:static/manager/");
		registry.addResourceHandler("/upload/**").addResourceLocations("classpath:static/upload/"); //lấy thư mục
//		registry.addResourceHandler("/upload/**").addResourceLocations("file:" +"/upload/"); //lấy thư mục
	}
	

	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		bean.setViewClass(JstlView.class);
		bean.setPrefix("/WEB-INF/views/"); //duong dan toi folder chua view
		bean.setSuffix(".jsp"); //duoi file cua view
		return bean;
	}
}
