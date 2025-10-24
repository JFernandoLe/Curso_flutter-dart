void main(){
  
  //Imaginemos que el siguiente json lo recuperamos de una peticion HTTP
  final Map<String,dynamic> rawJson={
    'name':'tony stark',
    'power':'money',
    'isAlive':true
  };
  
  //Esta forma de instanciar el objeto seria tardada porque debemos hacer todas las validaciones como el de isAlive
  final ironMan=new Hero(isAlive:rawJson['isAlive']??false,
                        power:"Money",
                        name:"Tony Stark");
  //Utilizando el name constructor
  final ironMan2=new Hero.fromJson(rawJson);
  print(ironMan);
  print(ironMan2);
}

class Hero{
  String name;
  String power;
  bool isAlive;
  Hero({
    required this.name, 
    required this.power,
    required this.isAlive
  });
  //Name contructor, con forma simplificada :
  Hero.fromJson(Map<String,dynamic> json ) 
    : name=json['name']??'no name found',
      power=json['power']??'no power found',
      isAlive=json['isAlive']??'No isAlive found';
  
  @override
  toString(){
    return '$name, $power, is alive: ${isAlive?'YES':'NO'}';
  }
  
}