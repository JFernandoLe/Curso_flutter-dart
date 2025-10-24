Future<void> main() async{
  
  print('inicio del main');
  try{
    final value=await      httpGet('https://google.com.mx');
  print('exito: $value');
  }on Exception{
    print('Tenemos una excepcion');
  }
  catch(err){
    print('OPPS! algo terrible paso: $err');   
  }finally{
    print('Fin del try catch');
  }
  
  
  
  print('fin del main');
}


Future<String> httpGet(String url) async{
  await Future.delayed(const Duration(seconds: 1));
  throw new Exception('No hay parametros en el URL');
  //return 'Tenemos un valor de la peticion';
}