void main() {
  // Manage Student Names
  Set<String> students = {'Kermina', 'Jouneer'};
  Set<String> newStudents = {'Nada', 'Mahrael'};

  void addStudent(String name) {
    students.add(name);
  }

  void printStudents(List<String> list, [int index = 0]) {
    if (index >= list.length) return;
    print(list[index]);
    printStudents(list, index + 1);
  }

  addStudent('Robin');
  
  // Spread operator
  var allStudents = {...students, ...newStudents};

  print(" Recursive Print");
  printStudents(allStudents.toList());

print("*******************************************");
  print(" Lambda Print");
  allStudents.forEach((name) => print(name));
print("************************************************");

  // Manage Student Courses
  Map<String, List<double>> studentGrades = {
    'Kermina': [85.0, 90.0],
    'Jouneer': [70.0, 75.0]
  };

  void addCourse(String studentName, String courseName, {double grade = 0}) {
    if (studentGrades.containsKey(studentName)) {
      studentGrades[studentName]!.add(grade);
    } else {
      studentGrades[studentName] = [grade];
    }
  }

  double averageGrade(String studentName) {
    var grades = studentGrades[studentName] ?? [];
    if (grades.isEmpty) return 0;
    
   
    double sum = grades.reduce((value, element) => value + element);
    return sum / grades.length;
  }

  addCourse('Kermina', 'Math', grade: 95);
  addCourse('xxx', 'Physics');

  print("Averages ");
  print("Kermina Average: ${averageGrade('Kermina')}");
  print("xx Average: ${averageGrade('xx')}");
}
