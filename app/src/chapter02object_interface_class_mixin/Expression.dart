abstract class AbstractExpression {}

abstract class AbstractAddition {
  var operand1, operand2;

  AbstractAddition(this.operand1, this.operand2);
}

abstract class AbstractSubtraction {
  var operand1, operand2;

  AbstractSubtraction(this.operand1, this.operand2);
}

abstract class AbstractNumber {
  var val;

  AbstractNumber(this.val);
}


abstract class ExpressionWithEval {
  get eval;
  String toString();
}

abstract class AdditionWithEval {
  get operand1;
  get operand2;
  get eval => operand1.eval + operand2.eval;
  String toString() => '($operand1 + $operand2)';
}

abstract class SubtractionWithEval {
  get operand1;
  get operand2;
  get eval => operand1.eval - operand2.eval;
  String toString() => '($operand1 - $operand2)';
}

abstract class MultipleWithEval {
  get operand1;
  get operand2;
  get eval => operand1.eval * operand2.eval;
  String toString() => '($operand1 * $operand2)';
}

abstract class NumberWithEval {
  get val;
  get eval => val;
  String toString() => '$val';
}

 abstract class Expression = AbstractExpression with ExpressionWithEval;
 class Addition = AbstractAddition with AdditionWithEval implements Expression;
 class Subtraction = AbstractSubtraction with SubtractionWithEval implements Expression;
 class Multiple = AbstractSubtraction with MultipleWithEval implements Expression;
 class Number = AbstractNumber with NumberWithEval implements Expression;

main(){
  var e = Addition(Addition(Number(4),Number(2)),Subtraction(Number(10),Number(7)));
  print('$e = ${e.eval}');

  var f = Multiple(Addition(Number(4),Number(2)),Subtraction(Number(10),Number(7)));
  print('$f = ${f.eval}');
}