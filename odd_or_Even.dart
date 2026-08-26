import 'dart:io';

void main(){

  stdout.write('Enter a whole number: ');
  int number = int.tryParse(stdin.readLineSync()?.trim()??'')?? 0;

  if(number % 2==0){
    print('$number is Even');
  }
  else{
    print('$number is Odd.');
  }
}