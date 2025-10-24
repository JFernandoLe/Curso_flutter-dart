void main(){
  
  print('inicio del main');
  
  httpGet('https://google.com.mx').then((value){
    print(value);
  }).catchError((err){
    print('Error: ${err}');
  });
  print('fin del main');
}


Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 1),(){
    throw 'Error en la peticion http';
    //return 'Respuesta de la peticion';
  });
}