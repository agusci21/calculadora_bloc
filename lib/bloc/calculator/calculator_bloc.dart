import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState());

  
  @override
  Stream<CalculatorState> mapEventToState(
    CalculatorEvent event,
  )async*{

    if(event is ResetAll){
      yield CalculatorState(
        firstNumber: '0',
        mathResult: '0',
        secondNumber: '0',
        operation: '+'
      );
    }else if(event is AddNumber){
      yield CalculatorState(
        firstNumber: '0',
        secondNumber: '0',
        operation: '+',
        mathResult: state.mathResult == '0' 
        ? event.number 
        : state.mathResult + event.number,
      );
    }

  }
}
