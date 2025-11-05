import 'package:flutter/material.dart';
class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors=Theme.of(context).colorScheme; //Me traje a todos los colores de mi tema
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20)
      
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text("lorem Nulla exercitation.",style:TextStyle(color:Colors.white)),
          )
        ),
        const SizedBox(height:10)
      ],
    );
  }
}