package com.Employee.DAOVO;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class EmployeeDAO {
	private static SqlSessionFactory sqlSessionFactory1;
	
	/*(참고) ibatis에서는 com.ibatis... 로 시작하는 것 사용
			mybatis라면 org.apache.ibatis로 시작
			ibatis에서는 parameterType이 아닌 parameterMap사용
			dtd가 //mybatis.org//DTD Mapper 3.0//EN" 인것이
			resultType대신에 resultClass이면 ibatis
			네임스페이스가 <sqlMap~이면 ibatis, 
			mybatis는 <mapper namespace=  로 시작
			#{ } 대신에 #  # 이면 ibatis
			
	*/
	
	static {
		String myxml = "Mybatis-config.xml";
		InputStream istream = null;
	
	try {
		istream = Resources.getResourceAsStream(myxml);
		//얘가 Mybatis-config.xml 환경설정파일을 읽어들인다는
	} catch (IOException e) {
		e.printStackTrace();
	}
	
	//마이바티스 configuration file(구성파일)을 읽어 --> istream에 담겨있음
	//SqlSessionFactory객체가 생성된다는
	sqlSessionFactory1 = new SqlSessionFactoryBuilder().build(istream);
	
	}
	
	public static List<EmployeeVO> employeeAllData() {
		return sqlSessionFactory1.openSession().selectList("employeeAllData");
		//여기서 sqlSessionFactory로 query 가동 --> mapper.xml의 select에 의해
		//전체 추출된 결과가 selectList()로 전부 보이게
	}
	
	public static EmployeeVO employeeSearchData(int employee_id) {
		return (EmployeeVO) sqlSessionFactory1.openSession().selectOne("employeeSearchData", employee_id);
	}
	
	
	public static EmployeeVO employeeSearch2Data(int employee_id, String last_name) {
		HashMap map = new HashMap();
		map.put("employee_id", employee_id);
		map.put("last_name", last_name);
		
		return (EmployeeVO) sqlSessionFactory1.openSession().selectOne("employeeSearch2Data", map);
	}
	
	//insert
	   public static int employeeInsertData(EmployeeVO employeeVO) {
	          SqlSession sqlsession1 = sqlSessionFactory1.openSession();
	          sqlsession1.insert("employeeInsertData",employeeVO);
	          sqlsession1.commit();//DB로 넣기위함
	          //return sqlsession1.insert("employeeInsertData",employeeVO);
	         return 0;
	          
	   }
	   
	   //update
	   public static int employeeUpdateData(EmployeeVO employeeVO) {
	          SqlSession sqlsession1 = sqlSessionFactory1.openSession();
	          sqlsession1.update("employeeUpdateData",employeeVO);
	          sqlsession1.commit();//DB로 넣기위함
	          //return sqlsession1.insert("employeeInsertData",employeeVO);
	         return 0;
	          
	   }
	   
	   //delete
	   public static int employeeDeleteData(int employee_id) {
	          SqlSession sqlsession1 = sqlSessionFactory1.openSession();
	          sqlsession1.update("employeeDeleteData",employee_id);
	          sqlsession1.commit();//DB로 넣기위함
	          //return sqlsession1.insert("employeeInsertData",employeeVO);
	         return 0;      
	   }
	
	
	
	
}

