void main() {
  var myName = "Fernando";
  String myLastname= "Leon";
  final String nickName="JFer"; //No permite cambiar su valor
  late final String myCountry; //Permite asignar un valor después
  myCountry="Mexico";
  const String mySchool="escom"; //Se asigna en tiempo de construcción, si sabemos que nunca va a cambiar su valor, es recomendable colocarlo porque es más rápido.
  print("Hola "+myName+" "+myLastname+" : "+nickName);
  print("My school ${mySchool.toUpperCase()}");
  print("My country is ${myCountry.split('')}");
}
