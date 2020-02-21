package com.bcp.bcp;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@SpringBootApplication
@ComponentScan(basePackages = "com.bcp")
@EntityScan(basePackages = "com.bcp.model")
@EnableJpaRepositories(basePackages = "com.bcp.repository")
@Configuration
@Controller
@CrossOrigin
public class BcpApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
        SpringApplication.run(BcpApplication.class, args);
    }
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(BcpApplication.class);
	}
	

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {

		return "index";
	}

	@RequestMapping(value = "/contact_us", method = RequestMethod.GET)
	public String contact_us() {

		return "contact_us";
	}
	
	@RequestMapping(value="/overview", method=RequestMethod.GET)
	public String overview()
	{
		return "overview_aboutus";
	
	}
	@RequestMapping(value="/what_we_do" ,method=RequestMethod.GET)
	public String whatwedo()
	{
		return "whatwedo_aboutus";
	}
	@RequestMapping(value="/work_with_us" , method=RequestMethod.GET)
	public String work_with_us()
	{
		return "work_with_us_aboutus";
	}
	
	@RequestMapping(value="/career_guidance_and_counseling", method=RequestMethod.GET)
	public String career_guidance_and_counseling()
	{
		return "career_guidance_and_counseling";
	}
	@RequestMapping(value="/ielts", method=RequestMethod.GET)
	public String ielts()
	{
		return "ielts_exam";
	}
	@RequestMapping(value="/toefl", method=RequestMethod.GET)
	public String toefl()
	{
		return "toefl_exam";
	}
	@RequestMapping(value="/pte", method=RequestMethod.GET)
	public String pte()
	{
		return "pte_exam";
	}
	@RequestMapping(value="/sat1", method=RequestMethod.GET)
	public String sat1()
	{
		return "sat1_exam";
	}
	
	@RequestMapping(value="/act", method=RequestMethod.GET)
	public String act()
	{
		return "act_exam";
	}
	@RequestMapping(value="/sat2", method=RequestMethod.GET)
	public String sat2()
	{
		return "sat2_exam";
	}
	@RequestMapping(value="/gmat", method=RequestMethod.GET)
	public String gmat()
	{
		return "gmat_exam";
	}
	@RequestMapping(value="/gre", method=RequestMethod.GET)
	public String gre()
	{
		return "gre_exam";
	}
	@RequestMapping(value="/wall_of_frame", method=RequestMethod.GET)
	public String wall_of_frame()
	{
		return "wall_of_frame";
	}
	@RequestMapping(value="/exams", method=RequestMethod.GET)
	public String exams()
	{
		return "exams";
	}
	@RequestMapping(value="/enquire", method=RequestMethod.GET)
	public String enquire()
	{
		return "enquire_now";
	}
	
}

	

