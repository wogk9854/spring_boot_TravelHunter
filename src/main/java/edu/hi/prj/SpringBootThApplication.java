package edu.hi.prj;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan(value = {"edu.hi.prj.mapper"})
@SpringBootApplication
public class SpringBootThApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootThApplication.class, args);
	}

}
