void main(){
  
  final String pokemon='Ditto';
  final int hp=100;
  final bool isAlive=true;
  bool? isTired; //El signo ? permite dar valor NULL
  final abilities=<String>['impostor'];
  final List<String> food=["apple"];
  final List<String> sprites=["ditto/front.png",'ditto/background.png'];
  
  //dynamic==null;
  dynamic errorMessage='Hola';
  errorMessage='2';
  errorMessage=["Fernando","Licuadora"];
  errorMessage= () => true;
  errorMessage+=1; //Deberia ser un error, pero como es dynamic no lo marca, eso puede traernos conflictos
  
  
  print("""
  $pokemon
  $hp
  $isAlive
  $isTired
  $abilities
  $food
  $sprites
  $errorMessage
  """);//Colocamos triple " para hacer comentario multilinea
  
    
}