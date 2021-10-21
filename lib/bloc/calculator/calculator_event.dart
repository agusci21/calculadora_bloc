part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent {}

class ResetAll extends CalculatorEvent{}

class AddNumber extends CalculatorEvent{
  final String number;

  AddNumber(this.number);
}
