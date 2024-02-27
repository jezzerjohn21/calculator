import 'package:calculator/calculator/data/repository/calculator_repository.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
late CalculatorRepository calculatorRepository;
setUp(() {
  calculatorRepository = CalculatorRepository();
});

test('Addition:Given two numbers, When add method is called, Then the sum is calculated correctly', (){
 // Given
  int number1 = 2;
  int number2 = 3;

  // When
  int result =  calculatorRepository.addition(number1, number2);

  // Then
  expect(result, equals(5));

});

test('Addition: Given two negative numbers, When add method is called, Then the sum is calculated correctly', () {
  // Given

  int number1 = -1;
  int number2 = 1;

  // When
  int result = calculatorRepository.addition(number1, number2);

  // Then
  expect(result, equals(0));

});



  group('Multiplication', () {
    test('Given Calculator class, when multiplication is called and both numbers are positive, then output positive number for multiplying positive numbers', () {
      expect(calculatorRepository.multplication(2, 3), equals(6));
    });

    test('Given Calculator class, when multiplication is called and both numbers are negative, then output positive number for multiplying positive numbers', () {
      expect(calculatorRepository.multplication(-2, -3), equals(6));
    });

    test('Given Calculator class, when multiplication is called and both are mixed signs, then output negative number for multiplying mixed signed numbers', () {
      expect(calculatorRepository.multplication(2, -3), equals(-6));
    });

    test('Given Calculator class, when multiplication is called and there is a zero, then output zero', () {
      expect(calculatorRepository.multplication(0, 5), equals(0));
    });

    test('Given Calculator class, when multiplication is called and there is a 1, then output same number multiplied to one', () {
      expect(calculatorRepository.multplication(1, 5), equals(5));
    });


    test('Given Calculator class, when multiplication is called and there is a decimal number, then output correct product for multiplying floating-point numbers', () {
      expect(calculatorRepository.multplication(2.5, 4), equals(10));
    });
  });


  group('Division', () {  test('Given calculator class is instantiated, when division is called, then it should divide two numbers correctly', () {
     
      double dividend = 10;
      double divisor = 2;

      double result = calculatorRepository.division(dividend, divisor);

      expect(result, equals(5));
    });

    test('Given calculator class is instantiated, when division is called, then it should divide two numbers should throw ArgumentError', () {

      double dividend = 10;
      double divisor = 0;

      expect(() => calculatorRepository.division(dividend, divisor),throwsException);
    }); });

 
}

