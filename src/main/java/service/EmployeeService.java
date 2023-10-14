package service;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import dao.EmployeeDao;
import dto.Employee;

@Service
public class EmployeeService {
	@Autowired
	EmployeeDao employeeDao;

	public String insert(Employee employee, ModelMap map) {
		employeeDao.save(employee);
		map.put("message", "<span style='color:green;'>Data Saved Succefully</span>");
		return "Home";
	}
	
	public String fetchAll(ModelMap map) {
		List<Employee> list=employeeDao.fetchAll();
		if(list.isEmpty())
		{
			map.put("message", "<span style='color:green;'>Data Not Found</span>");
			return "Home";
		}
		else {
			map.put("list", list);
			return "Fetch";
		}
	}
	  public String edit(int id,ModelMap map) {
			Employee employee=employeeDao.fetchEmployeeById(id);
			map.put("emp",employee);
			return "Edit";
		}
		public String editEmp(Employee employee,ModelMap map) {
			employeeDao.edit(employee);
			map.put("message","<h1 style='color:green'>Employee "+ employee.getName() +" Edited Successfully </h1>");
			map.put("list", employeeDao.fetchAll());
			return "Fetch";
		}
		
		public String delete(int id, ModelMap map) {
			Employee employee=employeeDao.fetchEmployeeById(id);
			employeeDao.remove(employee);
			map.put("list", employeeDao.fetchAll());
			map.put("message", "<h1 style='color:green'>Employee are deleted successfully</h1>");
			return "Fetch";
		}
		public String search(String content, ModelMap map) {
			HashSet<Employee> list=new LinkedHashSet<Employee>();

			list.addAll(employeeDao.fetchEmail(content));
			list.addAll(employeeDao.fetchName(content));
			list.addAll(employeeDao.fetchDesignation(content));
			
			try {
			list.addAll(employeeDao.fetchId(Integer.parseInt(content)));
			}
			catch (NumberFormatException e) {
			}

			if (list.isEmpty()) {
				map.put("message", "No Data Found");
				return "Fetch";
			} else {
				map.put("message", "Data Found");
				map.put("list", list);
				return "Fetch";
			}

		}

}
