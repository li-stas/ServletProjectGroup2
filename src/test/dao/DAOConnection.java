package test.dao;



import test.model.Student;

import java.util.List;

public interface DAOConnection {
    void connect();
    void disconnect();
    List<Student> selectAllStudents();
    void createStudent(String name, float scholarShip);
    void updateStudent(int id, float sum);
    void deleteStudent(int id);
}
