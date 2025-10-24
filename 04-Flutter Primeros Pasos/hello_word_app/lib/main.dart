import 'package:flutter/material.dart'; //Widgets de materialDesign

void main(){
    runApp(MyApp()); //Para correr nuestro widget incial
}


class MyApp extends StatelessWidget{
  
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp( //Al colocar const, hacemos que el codigo jamas se modificara en la construccion y sera mas facil la construccion del codigo
      debugShowCheckedModeBanner: false, //Para quitar la etiqueta de modo de desarrollo
      home: Scaffold(
        body:Center(child:Text("Hola Mundo"))
      )
    );
  }

}