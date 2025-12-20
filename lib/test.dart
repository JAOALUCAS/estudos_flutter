import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// stateless: not change
// materail app
// scaffold

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blueGrey,
        brightness: Brightness.dark
      )),
      home: Scaffold( // SafeArea
        appBar: AppBar(
          title: Text('Flutter Mapp'),
          // bottom: ,
          centerTitle: false,
          leading: Icon(Icons.abc),
          actions: [
            Text('A'),
            Icon(Icons.ac_unit_rounded)
          ],
          backgroundColor: Colors.teal,
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
        floatingActionButton: Column(
          children: [
            FloatingActionButton(
              onPressed: () {
                
              },
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 10.0,
            ),
            FloatingActionButton(
              onPressed: () {
                
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int value) {
            print(value);
          },
          selectedIndex: 0,
        ),
      ),
    );
  }
}