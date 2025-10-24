void main(){
  final numbers=[1,2,3,4,5,5,5,6,7,7,8,9,10,10];
  print("Lista original ${numbers}");
  print("Lista size ${numbers.length}");
  print("Lista index 0 ${numbers[0]}");
  print("Lista index 0 ${numbers.first}");
  print("Lista index final ${numbers.last}");
  print("Lista al reves ${numbers.reversed}"); //Se convierte en iterable
  
  final reverseNumbers=numbers.reversed; 
  print("Iterable ${reverseNumbers}");
  print("Lista ${reverseNumbers.toList()}"); //Regresamos a una lista
  print("Set ${reverseNumbers.toSet()}"); //El set no permite repeticiones
  
  final numbersGreaterThanFive=numbers.where((num)   {
    return num>5; //true
  });
  print(">5 ${numbersGreaterThanFive}");
}