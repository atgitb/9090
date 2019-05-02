package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.dao.StudentDAO;
import com.pojo.Student;

@Service
public class StudentService {
	
	  @Autowired
	  private StudentDAO  studentDAO;

	  public void fenye(){
	  	System.out.print("0");

	  }


	 /* public IPage<Student>  fenye(int page, int size, Integer xh, String xm, Integer status, String minCS,String maxCS)
	  {
		    Page<Student> pp = new Page<Student>(page,size);
		   // pp.setDesc("cs");
		    
		    QueryWrapper<Student> queryWrapper = new QueryWrapper<Student>();
		    if (xh!=null)
		    {
		    	queryWrapper.eq(true, "xh",xh);
		    }
		    if (xm!=null && xm.trim().length()>0)
		    {
		    	 queryWrapper.like(true, "xm","%"+ xm+"%");
		    }
		    if (status!=null && status!=-1)
		    {
		    	queryWrapper.eq(true, "status", status);
		    }
		    if (minCS!=null && minCS.trim().length()>0)
		    {
		    	queryWrapper.ge(true, "cs", minCS+" 00:00:00.000");
		    }
		    if (maxCS!=null && maxCS.trim().length()>0)
		    {
		    	queryWrapper.le(true, "cs", maxCS+" 23:59:59.999");
		    }
		    
		    return studentDAO.selectPage(pp, queryWrapper);
		    
		  
	  }*/
	  

}



