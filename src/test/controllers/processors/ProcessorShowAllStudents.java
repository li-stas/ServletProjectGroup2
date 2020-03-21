package test.controllers.processors;

import test.dao.DAOConnection;
import test.dao.OracleDAOConnection;
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
        DAOConnection daoConnection = OracleDAOConnection.getInstance();

        // добавили
        daoConnection.createStudent("Kate", 100f);
        daoConnection.createStudent("Peter", 99);

        // читаем
        List<Student> studentList;
        studentList = daoConnection.selectAllStudents();


        System.out.println("studentList" + studentList);

        request.getSession().setAttribute("studentList", studentList);
        return new ProcessorResult("/main","/pages/showAllStudents.jsp", true);
    }

    public ProcessorResult getResult2List(HttpServletRequest request) {

        List<Student> studentList = new ArrayList<>();
        studentList.add(new Student(1, "Kate", 100f));
        studentList.add(new Student(2, "Peter", 99));

        System.out.println("studentList" + studentList);

        request.getSession().setAttribute("studentList", studentList);
        return new ProcessorResult("/main","/pages/showAllStudents.jsp", true);
    }
}
