import 'class_06.dart';

void main() {
  Teacher teacher = Teacher('John Brown', 40, true, 5);
  teacher.introduce();

  Student student1 = Student('Adam White', 17, false, {
    Subject.math: 90,
    Subject.physics: 85,
    Subject.english: 92,
    Subject.history: 88,
  });
  student1.introduce();
  student1.showMarks();

  Student student2 = Student('Alice Green', 18, false, {
    Subject.math: 95,
    Subject.physics: 78,
    Subject.english: 100,
  });
  student2.introduce();
  student2.showMarks();
}