import 'dart:io';

void main() {
  stdout.write('Enter your age: ');
  String? input = stdin.readLineSync();

  // int.tryParse returns null if the input isn't a valid integer
  int? age = int.tryParse(input ?? '');

  if (age != null) {
    print('Next year, you will be ${age + 1}.');
  } else {
    print('Invalid number entered.');
  }
}