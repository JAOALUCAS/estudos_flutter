import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Hero( // Transição de um elemento que se repete em mais de uma page
      tag: 'hero1',
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: 
                Image.asset(
                  'assets/images/wallpaper-de-paisagem-em-design-plano_74890-42.avif',
                  color: Colors.teal,
                  colorBlendMode: BlendMode.modulate,
                ),
            ),
            Text(title, style: 
              TextStyle(
                  color: Colors.white54,
                  fontSize: 40.0,
                  letterSpacing: 5.0
                ),
            )
          ]
      ),
    );
  }
}