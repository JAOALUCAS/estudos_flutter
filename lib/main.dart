import 'package:flutter/material.dart';
import 'package:flutter_apps/data/constants.dart';
import 'package:flutter_apps/data/notifiers.dart';
import 'package:flutter_apps/views/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_apps/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

// stateless: not change
// materail app
// scaffold
// stateful: change
// setState to change

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  void initState() {
    initThemeMode();
    super.initState();
  }

  void initThemeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? theme = await prefs.getBool(KConstant.themeModeKey);
    isLigthModeNotifier.value = theme ??false;
  }

  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isLigthModeNotifier, 
      builder: (context, isLigthMode, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorScheme: ColorScheme.fromSeed(
          seedColor: isLigthMode ? Colors.white24 : Colors.black26,
          brightness: isLigthMode ? Brightness.light : Brightness.dark
        )),
        home: MyHomePage()
      );
    },);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return WelcomePage();
  }
}