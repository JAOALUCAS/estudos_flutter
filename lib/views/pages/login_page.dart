import 'package:flutter/material.dart';
import 'package:flutter_apps/views/widget_tree.dart';
import 'package:flutter_apps/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
    required this.title
  });

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {

  // @override
  // void initState() {
  //   print('initState');
  //   super.initState();
  // }

  TextEditingController controllerEmail = TextEditingController(text: '123');
  TextEditingController controllerPw = TextEditingController(text: '456');
  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPw.dispose();
    super.dispose();
  }

  String confirmedEmail = '123';
  String confirmedPw = '456';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HeroWidget(title: widget.title),
                SizedBox(height: 20.0,),
                TextField(
                  controller: controllerEmail,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.0)
                    )
                  ),
                  onEditingComplete: () => setState(() {}),
                ),
                SizedBox(height: 20.0,),
                TextField(
                  controller: controllerPw,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.0)
                    )
                  ),
                  onEditingComplete: () => setState(() {}),
                ),
                SizedBox(height: 30.0,),
                OutlinedButton(
                  onPressed: () {
                    onLoginPressed();
                  }, 
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50.0),
                  ),
                  child: Text(title!,
                    style: TextStyle(
                      color: Colors.lightBlueAccent
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onLoginPressed()
  {
    if(confirmedEmail == controllerEmail.text &&
     confirmedPw == controllerPw.text)
    {
      Navigator.pushAndRemoveUntil(
        context, 
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
        (route) => false, 
      );
    }
  }

}