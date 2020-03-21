package test.controllers.processors;

import test.model.ProcessorResult;
import test.model.Student;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

public class ProcessorShowAllStudents extends Processor {
    public ProcessorShowAllStudents() {
        action = "showAllStudents";
    }

    @Override
    public ProcessorResult getResult(HttpServletRequest request) {
        List<Student> studentList = new ArrayList<>();
        studentList.add(new Student(1, "Kate"));
        studentList.add(new Student(2, "Peter"));

        System.out.println("studentList" + studentList);

        request.getSession().setAttribute("studentList", studentList);
        return new ProcessorResult("/main","/pages/showAllStudents.jsp", true);
    }
}
