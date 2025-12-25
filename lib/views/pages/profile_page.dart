import 'package:flutter/material.dart';
import 'package:flutter_apps/data/notifiers.dart';
import 'package:flutter_apps/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage('assets/images/wallpaper-de-paisagem-em-design-plano_74890-42.avif'),
          ),
          ListTile(    
            title: Text('Logout'),
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomePage();
                  },
                )
              );
            },
          )
        ],
      ),
    );
  }
}