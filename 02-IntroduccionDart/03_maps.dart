void main(){
  
  final Map<String,dynamic>pokemon={
    'name':'Ditto',
    'hp':100,
    'isAlive':true,
    'abilities':<String>['Impostor'],
    'sprites':{
      1:'ditto/front.png',
      2:'ditto/back.png'
    }
  };
  
  final pokemons={
    1:"ABC",
    2:"XYZ",
    3:"ALE",
  };
  
  print(pokemon);
  print("Name: ${pokemon['name']}");
  
  print('Front: ${pokemon['sprites'][1]}');
  print('Back: ${pokemon['sprites'][2]}');
  
  
  
  
  print(pokemons);
}