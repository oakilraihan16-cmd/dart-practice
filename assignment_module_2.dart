import 'dart:io';

void main() {
  String continueChoice = 'y';

  while (continueChoice == 'y' || continueChoice == 'Y') {
    // Display Menu
    print('============================================');
    print('        SMART TEMPERATURE CONVERTER         ');
    print('============================================');
    print('1. Celsius to Fahrenheit');
    print('2. Fahrenheit to Celsius');
    print('3. Celsius to Kelvin');
    print('4. Kelvin to Celsius');
    print('5. Fahrenheit to Kelvin');
    print('6. Kelvin to Fahrenheit');
    print('7. Exit');
    stdout.write('Enter your choice: ');

    String? choiceInput = stdin.readLineSync();
    int? choice = int.tryParse(choiceInput ?? '');

    if (choice == null || choice < 1 || choice > 7) {
      print('Invalid choice. Please enter a number between 1 and 7.\n');
      continue;
    }

    if (choice == 7) {
      print('============================================');
      print(' Thank You!');
      print(' Program Ended');
      print('============================================');
      break;
    }

    // Take temperature input
    String unitLabel = '';
    if (choice == 1 || choice == 3) unitLabel = 'Celsius';
    else if (choice == 2 || choice == 5) unitLabel = 'Fahrenheit';
    else if (choice == 4 || choice == 6) unitLabel = 'Kelvin';

    stdout.write('Enter temperature in $unitLabel: ');
    String? tempInput = stdin.readLineSync();
    double? temp = double.tryParse(tempInput ?? '');

    if (temp == null) {
      print('Invalid temperature value entered. Try again.\n');
      continue;
    }

    // Perform conversion and display output using switch
    switch (choice) {
      case 1:
        double f = (temp * 9 / 5) + 32;
        print('$temp°C = ${f.toStringAsFixed(2)}°F');
        break;
      case 2:
        double c = (temp - 32) * 5 / 9;
        print('$temp°F = ${c.toStringAsFixed(2)}°C');
        break;
      case 3:
        double k = temp + 273.15;
        print('$temp°C = ${k.toStringAsFixed(2)} K');
        break;
      case 4:
        double c = temp - 273.15;
        print('$temp K = ${c.toStringAsFixed(2)}°C');
        break;
      case 5:
        double k = (temp - 32) * 5 / 9 + 273.15;
        print('$temp°F = ${k.toStringAsFixed(2)} K');
        break;
      case 6:
        double f = (temp - 273.15) * 9 / 5 + 32;
        print('$temp K = ${f.toStringAsFixed(2)}°F');
        break;
    }

    // Ask to repeat
    stdout.write('\nDo you want to perform another conversion? (y/n): ');
    continueChoice = stdin.readLineSync()?.trim() ?? 'n';
    print('');
  }

  if (continueChoice != 'y' && continueChoice != 'Y') {
    print('============================================');
    print(' Thank You!');
    print(' Program Ended');
    print('============================================');
  }
}