package enaa.gestionetudiants.controller;

import enaa.gestionetudiants.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("")
public class StudentController {
    private final List<Student> students = new ArrayList<>();
    private int nextId = 1;

    @PostConstruct
    public void init() {
        students.add(new Student(nextId++, "name", "email", "phoneNumber", "address"));
    }

    @GetMapping("/students")
    public String allStudent(Model model) {
        model.addAttribute("students", students);
        return "viewStudents";
    }

    @GetMapping("/add-student")
    public String showAddStudentForm(Model model) {
        model.addAttribute("student", new Student());
        return "addStudent";
    }

    @PostMapping("/add-student")
    public String addStudent(@ModelAttribute("student") Student student) {
        student.setId(nextId++);
        students.add(student);
        return "redirect:/students";
    }


    @GetMapping("/edit-student/{id}")
    public String showEditStudentForm(@PathVariable("id") int id, Model model) {
        Student student = findStudentById(id);
        if (student != null) {
            model.addAttribute("student", student);
            return "editStudent";
        }
        return "redirect:/students";
    }

    @PostMapping("/edit-student/{id}")
    public String updateStudent(@PathVariable("id") int id, @ModelAttribute("student") Student updatedStudent) {
        Student existingStudent = findStudentById(id);
        if (existingStudent != null) {
            existingStudent.setName(updatedStudent.getName());
            existingStudent.setEmail(updatedStudent.getEmail());
            existingStudent.setPhoneNumber(updatedStudent.getPhoneNumber());
            existingStudent.setAddress(updatedStudent.getAddress());
        }
        return "redirect:/students";
    }


    @GetMapping("/delete-student/{id}")
    public String deleteStudent(@PathVariable("id") int id) {
        Student student = findStudentById(id);
        if (student != null) {
            students.remove(student);
        }
        return "redirect:/students";
    }

    private Student findStudentById(int id) {
        for (Student student : students) {
            if (student.getId() == id) {
                return student;
            }
        }
        return null;
    }
}
