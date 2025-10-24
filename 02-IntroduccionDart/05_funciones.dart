 void main(){
   print(greetEveryone());
   print(greetEveryoneLambda());
  print("Suma ${addTwoNumbers(10,30)}");
   print("Suma lambda ${addTwoNumbersLambda(5,8)}");
 }


String greetEveryone()
{
  return "Hello everyone";
}
//Lambda function o funcion flecha
String greetEveryoneLambda()=>'Hello everyone';

int addTwoNumbers(int a,int b){
  return a+b;
}
int addTwoNumbersLambda(int a,int b)=>a + b;

//B tomara un valor por defecto NULL
int addTwoNumbersOptional(int a,[int b=0]){
  //b=b??0; //Si b no tiene un valor, se le asigna 0   //b??=0 es otra forma de hacerlo
  return a + b;
}