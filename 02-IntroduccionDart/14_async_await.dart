Future<void> main() async{
  
  print('inicio del main');
  //Para poder captar excepcines
  try{
    final value=await      httpGet('https://google.com.mx');
  print(value);
  }catch(err){
    print('Tenemos un error: $err');   
  }
  
  
  
  print('fin del main');
}


Future<String> httpGet(String url) async{
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error en la peticion';
  //return 'Tenemos un valor de la peticion';
}