import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    super.key,
    required this.title,
    this.widget
  });

  final String title;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Hero( // Transição de um elemento que se repete em mais de uma page
      tag: 'hero1',
      child: GestureDetector(
        onTap: widget == null
            ? null
            : () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => widget!, 
                  ),
                );
              },
        child: Stack(
          alignment: Alignment.center,
          children: [
            AspectRatio(
              aspectRatio: 1920 / 1080,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: 
                    Image.asset(
                      'assets/images/wallpaper-de-paisagem-em-design-plano_74890-42.avif',
                      fit: BoxFit.cover,
                      color: Colors.teal,
                      colorBlendMode: BlendMode.modulate,
                    ),
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
      ),
    );
  }
}