import 'package:flutter/material.dart';
import 'package:flutter_apps/data/constants.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({
    super.key,
    required this.title,
    required this.description
  });

  final String title;
  final String description;

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: double.infinity,
          child: Card(              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Title Card',
                      style: KTextStyle.titlePinkAccentText,
                    ),
                    Text('Description Card',
                      style: KTextStyle.descriptionTealText,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}