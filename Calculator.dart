import 'dart:io';

void main(){


  stdout.write('Enter The First Number:')
  double num1 = double.tryParse(stdin.readLineSync()?.trim() ??'') ?? 0.0;

  stdout.write('Enter The Second Number:');
  double num2 = double.tryParse(stdin.readLineSync()?.trim()??'')?? 0.0;

  print('/n--- Results---');
  print('Sum: ${}')
}