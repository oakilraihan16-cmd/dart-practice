import 'dart:io';

void main() {
  print('----Enter Student Information----');

  stdout.write(' Name: ');
  String Name = stdin.readLineSync()?.trim() ?? 'Unknown';

  stdout.write(' Age: ');
  int Age = int.tryParse(stdin.readLineSync()?.trim() ?? '') ?? 0;

  stdout.write(' Student ID: ');
  String StudentId = stdin.readLineSync()?.trim() ?? 'N/A';

  stdout.write(' Email: ');
  String Email = stdin.readLineSync()?.trim() ?? 'Unknown';

  stdout.write(' Phone Number: ');
  String? rawPhone = stdin.readLineSync()?.trim();
  String? PhoneNumber = (rawPhone != null && rawPhone.isNotEmpty) ? rawPhone : null;

  print('Student Profile');
  print('Name           :$Name');
  print('Age            :$Age');
  print('Student ID     :$StudentId');
  print('Email          :$Email');
  print('Phone Number   :${PhoneNumber ?? "Not Provided"}');

  print('---Enter Academic Marks---');

  stdout.write('Enter Total Marks: ');
  double totalMarks = double.tryParse(stdin.readLineSync()?.trim() ?? '') ?? 0.0;

  stdout.write('Enter Obtained Marks: ');
  double obtainedMarks = double.tryParse(stdin.readLineSync()?.trim() ?? '') ?? 0.0;

  if (totalMarks <= 0) {
    print('\n[!] Error: Total marks must be greater than 0.');
    return;
  }

  double percentage = (obtainedMarks / totalMarks) * 100;

  String grade;
  String status;

  if (percentage >= 80 && percentage <=100) {
    grade = 'A+';
    status = 'Passed';
  } else if (percentage >= 70) {
    grade = 'A';
    status = 'Passed';
  } else if (percentage >= 60) {
    grade = 'A-';
    status = 'Passed';
  } else if (percentage >= 50) {
    grade = 'B';
    status = 'Passed';
  } else if (percentage >= 40) {
    grade = 'C';
    status = 'Passed';
  } else if (percentage >= 33) {
    grade = 'D';
    status = 'Passed';
  } else {
    grade = 'F';
    status = 'Failed';
  }

  print('========ACADEMIC REPORT=======');
  print('Obtained / Total : $obtainedMarks / $totalMarks');
  print('Percentage       : ${percentage.toStringAsFixed(2)}%');
  print('Grade            : $grade');
  print('Result Status    : $status');
}