import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  TextEditingController controller = TextEditingController();
  bool? isChecked1 = false;
  bool? isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
            onEditingComplete: () {
              setState(() {});
            },
          ),          
          Text(controller.text),
          Checkbox(
            tristate: true,
            value: isChecked1,
            onChanged: (bool? value){
            setState(() {
              isChecked1 = value;
            });
          }),
          CheckboxListTile(
            tristate: true,
            value: isChecked2,
            onChanged: (bool? value){
            setState(() {
              isChecked2 = value;
            });
          })
        ],
      ),
    );
  }
}