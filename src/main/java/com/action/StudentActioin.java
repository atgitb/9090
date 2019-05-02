package com.action;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.service.StudentService;

@Controller

public class StudentActioin {

/*oo*/
	/*jijl*/
	 @Autowired
	 private StudentService  studentService;
	 
	 @Autowired
	 private HttpServletRequest request;
	 

	/* public String fenye(@RequestParam(defaultValue="1") int page, @RequestParam(defaultValue="10") int size, Integer xh, String xm, Integer status, String minCS,String maxCS)
	 
	 {
		 IPage<Student>  ipage = studentService.fenye(page, size, xh, xm, status, minCS, maxCS);
		 request.setAttribute("ipage", ipage);
	
		 long sum = ipage.getTotal();
		 long count = (long)Math.ceil(1.0*sum/size);
		 request.setAttribute("count", count);///总页数
		 
		 return "/showStudent.jsp";
	 }
*/
	@RequestMapping("/fenye")
	 public String fenye(){
		studentService.fenye();
		return "index.jsp";

	}
}
