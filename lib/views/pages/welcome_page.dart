import 'package:flutter/material.dart';
import 'package:flutter_apps/views/pages/login_page.dart';
// import 'package:flutter_apps/views/widget_tree.dart';
// import 'package:flutter_apps/widgets/hero_widget.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // HeroWidget(),
                Lottie.asset('assets/lotties/waves.json', height: 400.0),
                FittedBox(
                  child: Text('Flutter App',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 20.0
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      FilledButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context, 
                            MaterialPageRoute(
                              builder: (context) {
                                 return LoginPage(title: 'Register',);
                              },  
                            )
                          );
                        }, 
                        style: FilledButton.styleFrom(
                          minimumSize: Size(double.infinity, 40),
                          backgroundColor: Colors.tealAccent,
                        ),
                        child: Text('Get Started'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginPage(title: 'Login',);
                              },
                            )
                          );
                        },
                        child: Text('Login',
                          style: TextStyle(
                            color: Colors.tealAccent,
                          ),
                        )
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}