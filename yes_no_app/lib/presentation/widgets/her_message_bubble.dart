import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entity/message.dart';

class HerMessageBubble extends StatelessWidget {
  final Message message;
  const HerMessageBubble({required this.message,super.key});
  @override
  Widget build(BuildContext context) {
    final colors=Theme.of(context).colorScheme; //Me traje a todos los colores de mi tema
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
      
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text(message.text,style:TextStyle(color:Colors.white)),
          )
        ),
        const SizedBox(height:10),
        _ImageBubble(message.imageUrl!),
        const SizedBox(height: 10)
        //Todo: imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
 final String imageUrl;
 const _ImageBubble(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //Estamos obteniendo el size del dispositivo
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(imageUrl,
        width: size.width*0.7,
        height: 150,
        fit:BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if(loadingProgress==null) return child;
          return Container(
            width: size.width*0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: const Text("Daenerys está enviando un mensaje...")
          );
        },
      ));
  }
}