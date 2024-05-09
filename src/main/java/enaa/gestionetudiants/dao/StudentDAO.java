package enaa.gestionetudiants.dao;

import com.enaa.gestionetudiants.model.Student;

import java.util.List;

public interface StudentDAO {
    List<Student> getAllStudents();
    Student getStudentById(int id);
    void addStudent(Student student);
    void updateStudent(Student student);
    void deleteStudent(int id);
}
