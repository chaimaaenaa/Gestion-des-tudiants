package enaa.gestionetudiants.controller;

import enaa.gestionetudiants.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.util.ArrayList;
import java.util.List;

@Controller
public class StudentController {
    private final List<Student> students =new ArrayList<>();
    private int nextId = 1 ;

    @PostConstructor
    public void init() {
        students.add(new Student(1, "chaimaa", "chaimaa@gmail.com", "060908776", "Beni Mellal"));
    }
//    @Autowired
//    private StudentService studentService;

    @GetMapping("/students")
    public String showStudentsPage(Model model) {
        model.addAttribute("students", students);
        return "viewStudents";
    }

    @GetMapping("/add-student")
    public String showAddStudentForm(Model model) {
        model.addAttribute("student", new Student());
        return "addStudent";
    }

//    @PostMapping("/add-student")
//    public String addStudent(@ModelAttribute("student") @Valid Student student, BindingResult result) {
//        if (result.hasErrors()) {
//            return "addStudent";
//        }
//        studentService.addStudent(student);
//        return "redirect:/students";
//    }
//
//    @GetMapping("/edit-student/{id}")
//    public String showEditStudentForm(@PathVariable("id") int id, Model model) {
//        Student student = studentService.getStudentById(id);
//        model.addAttribute("student", student);
//        return "editStudent";
//    }
//
//    @PostMapping("/edit-student/{id}")
//    public String updateStudent(@PathVariable("id") int id, @ModelAttribute("student") @Valid Student student,
//                                BindingResult result) {
//        if (result.hasErrors()) {
//            return "editStudent";
//        }
//        studentService.updateStudent(student);
//        return "redirect:/students";
//    }
//
//    @GetMapping("/delete-student/{id}")
//    public String showDeleteStudentConfirmation(@PathVariable("id") int id, Model model) {
//        Student student = studentService.getStudentById(id);
//        model.addAttribute("student", student);
//        return "deleteStudent";
//    }
//
//    @PostMapping("/delete-student/{id}")
//    public String deleteStudent(@PathVariable("id") int id) {
//        studentService.deleteStudent(id);
//        return "redirect:/students";
//    }
}
