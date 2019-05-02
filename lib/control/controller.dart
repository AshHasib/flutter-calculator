

class CalculatorController{
  List<String>operands=["+","-","*","/","x!","√","%","π","="];
  
  
  bool isOperand(String ch){
    return operands.contains(ch);
  }

  bool textIsEmpty(String text){
    return text.isEmpty;
  }
}