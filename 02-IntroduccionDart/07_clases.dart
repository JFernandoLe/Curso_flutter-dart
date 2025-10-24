
void main(){
  //final wolverine = new Hero('Logan','Regeneracion');
  final wolverine = new Hero(name:'Logan');
  print(wolverine);
  //Al hacer prin(wolverine), realmente estamos haciendo print(wolverine.toString), podemos modificar el comportamienmto de esa funcion con @override
  
  print(wolverine.name);
  print(wolverine.power);
}

class Hero{
  String? name;
  String? power;
  
  //Constructor normal
  /*Hero(String pName, String pPower){
    name=pName;
    power=pPower;
  }*/
  //Forma simplificada
  //Hero(this.name,this.power);
  //Parametros no obligados
  Hero({required this.name,this.power="Sin poder"});
  
  @override
  String toString(){
    return "$name - $power";
  }
}