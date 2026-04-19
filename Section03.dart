import "dart:io";

void main() {
  List<String> studentNames = [];
  List<List<double>> allGrades = [];

  try {
    stdout.writeln("Enter the number of students :  ");
    int? numberofStudents = int.tryParse(stdin.readLineSync()!);

    if (numberofStudents == null || numberofStudents <= 0) {
      print("Invalid Input");
      return;
    }

    for (int i = 0; i < numberofStudents; i++) {
      print("\n--- Student ${i + 1} ---");
      stdout.writeln("Enter name:  ");
      String name = stdin.readLineSync()!;
      studentNames.add(name);

      stdout.write("Enter the number of subjects for $name:  ");
      int? numOfSub = int.tryParse(stdin.readLineSync()!);

      if (numOfSub == null || numOfSub <= 0) {
        print("Invalid Number of subjects");
        allGrades.add([]);
        continue;
      }
      
      List<double> CurrentStudentGrades = [];
      for (int j = 0; j < numOfSub; j++) {
        stdout.writeln("Enter grade for subject ${j + 1}: ");
        double? grade = double.tryParse(stdin.readLineSync()!);

        if (grade != null) {
          CurrentStudentGrades.add(grade);
        } else {
          print("Invalid grade entered. Setting it to 0.");
          CurrentStudentGrades.add(0);
        }
      }
      allGrades.add(CurrentStudentGrades);
    }

    while (true) {
      print("\n--- Menu ---");
      print("1. Show all Results");
      print("2. Search Student");
      print("3. Exit");
      stdout.write("Choose an option {1, 2, 3}: ");
      String? choice = stdin.readLineSync();
      
      if (choice == "1") {
        ShowAllStudent(studentNames, allGrades);
      } else if (choice == "2") {
        SearchStudent(studentNames, allGrades);
      } else if (choice == "3") {
        print("Exit Program");
        break;
      } else {
        print("Invalid Choice: try again");
      }
    }
  } catch (exc) {
    print("An unexpected error occurred: $exc");
  }
}

void SearchStudent(List<String> names, List<List<double>> grades) {
  stdout.writeln("Enter Student Name: ");
  String? name = stdin.readLineSync();
  int index = names.indexWhere((n) => n.toLowerCase() == name?.toLowerCase());

  if (index != -1) {
    double average;
    
    if (grades[index].isEmpty) {
      average = 0;
    } else {
      average = grades[index].reduce((a, b) => a + b) / grades[index].length;
    }
    print("Student found! Average grade: ${average.round()}");
  } else {
    print("Message: Student not found.");
  }
}

void ShowAllStudent(List<String> names, List<List<double>> grades) {
  print("\n--- All Students Results ---");

  for (int i = 0; i < names.length; i++) {
    double average;
  
    if (grades[i].isEmpty) {
      average = 0;
    } else {
      average = grades[i].reduce((a, b) => a + b) / grades[i].length;
    }
    
    String LetterGrade;
  
    if (average >= 90)
      LetterGrade = "A";
    else if (average >= 80)
      LetterGrade = "B";
    else if (average >= 70)
      LetterGrade = "C";
    else
      LetterGrade = "F";

    print("Name: ${names[i].toUpperCase()} | Average: ${average.toStringAsFixed(2)} | Grade: $LetterGrade");
  }
}
