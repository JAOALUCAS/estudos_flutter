import 'package:flutter/material.dart';
import 'package:flutter_apps/data/constants.dart';
import 'package:flutter_apps/widgets/container_widget.dart';
import 'package:flutter_apps/widgets/hero_widget.dart';
import 'package:flutter_apps/views/pages/course_page.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({super.key});

  final List<String> list = const [
    KValue.keyConcepts,
    KValue.cleanUi,
    KValue.fixBugs,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Home', widget: CoursePage(),),
            ...List.generate(
                3, 
                (index) {
                  return ContainerWidget(
                    title: list.elementAt(index), 
                    description: 'Card description'
                  );
                }
              ),
          ],
        ),
      ),
    );
  }
}