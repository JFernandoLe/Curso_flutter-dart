import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  
  const CounterFunctionsScreen ({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}




class _CounterFunctionsScreenState extends State<CounterFunctionsScreen>{
  int clickCounter=0;
  String textClick="clicks";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Counter Functions Screen'),
        actions: [
          IconButton(
          onPressed:(){
            setState((){
              clickCounter=0;
            });
          } , 
          icon: Icon(Icons.refresh_rounded)),
        ]
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: const TextStyle(fontSize: 160,fontWeight: FontWeight.w100)), 
              if(clickCounter==1)
                const Text('Click',style: TextStyle(fontSize: 25)),
            
              if(clickCounter!=1)
                const Text('Clicks',style: TextStyle(fontSize: 25)),
            ],
              ),
              ),
              floatingActionButton: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                CustomButton(icono:Icons.exposure_minus_1_outlined,onPressed: (){
                  setState(() {
                    if (clickCounter==0) return;
                    clickCounter--;
                  });
                },),
                SizedBox(height: 15), //Para la separación entre los botones
                CustomButton(icono:Icons.plus_one,onPressed: (){
                  setState(() {
                    clickCounter++;
                  });
                },),
                SizedBox(height: 15),
                CustomButton(icono:Icons.refresh_outlined,onPressed: (){
                  clickCounter=0;
                  setState(() {
                    clickCounter=0;
                  });
                },),
              ],)
      );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icono;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key, required this.icono,this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 8,
      backgroundColor: Colors.amber,
      shape: StadiumBorder(),
      onPressed: onPressed,
    child:Icon(icono),
    );
  }
}

