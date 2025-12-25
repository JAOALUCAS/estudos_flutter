import 'package:flutter/material.dart';

class ExpandedAndFlexible extends StatelessWidget {
  const ExpandedAndFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                // flex: 4,
                child: Container(
                  color: Colors.teal,
                  height: 20.0,
                  child: Text('Hello'),
                )
              ),
              Flexible(
                child: Container(
                  color: Colors.amber,
                  height: 20.0,
                  child: Text('World!'),
                )
              )
            ],
          )
        ],
      ),
    );
  }
}