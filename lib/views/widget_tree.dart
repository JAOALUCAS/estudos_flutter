import 'package:flutter/material.dart';
import 'package:flutter_apps/data/constants.dart';
import 'package:flutter_apps/data/notifiers.dart';
import 'package:flutter_apps/views/pages/home_page.dart';
import 'package:flutter_apps/views/pages/profile_page.dart';
import 'package:flutter_apps/views/pages/settings_page.dart';
import 'package:flutter_apps/widgets/navbar_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

String? title = 'Flutter Map';

List<Widget> pages = [
  HomePage(),
  ProfilePage()
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // SafeArea
        appBar: AppBar(
          title: Text(title!),
          // bottom: ,
          centerTitle: false,
          // leading: Icon(Icons.abc),
          actions: [
            IconButton(
              onPressed: () async {
                isLigthModeNotifier.value = !isLigthModeNotifier.value;
                final SharedPreferences prefs = 
                  await SharedPreferences.getInstance();

                await prefs.setBool(KConstant.themeModeKey, isLigthModeNotifier.value);
              }, 
              icon: ValueListenableBuilder(
                valueListenable: isLigthModeNotifier, 
                builder: (context, isLigthMode, child) {
                  return Icon(
                    isLigthMode 
                    ? Icons.dark_mode
                    : Icons.light_mode
                  );
              },)
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, // pushReplacement
                  MaterialPageRoute(
                    builder: (context) {
                      return SettingsPage(title: 'Settings Qwe',);
                    },
                  )
                );
              }, 
              icon: Icon(Icons.settings)
            )
          ],
          // backgroundColor: Colors.black87,
        ),
        drawer: Drawer( // SafeArea
          child: Column(
            children: [
              DrawerHeader(child: Text('Drawer')),
              ListTile(
                title: Text('Text'),
              )
            ],
          ),
        ),
        body: ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (BuildContext context, int selectedPage, Widget? child) {
            return  pages.elementAt(selectedPage);
          },
        ),
        // body: pages.elementAt(0),
        // body: currentIndex == 0
        //   ? Center(child: Text('Home'),)
        //   : Center(child: Text('Profile'),),
        // floatingActionButton: Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     FloatingActionButton(
        //       onPressed: () {
                
        //       },
        //       child: Icon(Icons.add),
        //     ),
        //     SizedBox(
        //       height: 10.0,
        //     ),
        //     FloatingActionButton(
        //       onPressed: () {
                
        //       },
        //       child: Icon(Icons.add),
        //     ),
        //   ],
        // ),
        bottomNavigationBar: NavbarWidget(),
      );;
  }
}