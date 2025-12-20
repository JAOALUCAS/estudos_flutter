import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
        // leading: Icon(Icons.notification_add, color: Colors.amber,),
      ),
      body: Container(
        child: ListTile(
          leading: Icon(Icons.join_full),
          title: Text('Hello World!'),
          tileColor: Colors.red,
          trailing: Text('Another!'),
          onTap: () {
            print('clicked!');
          },
        ),
      ),
      // body: Stack( // Padding
      //   children: [
      //     Image.asset(
      //       "assets/images/wallpaper-de-paisagem-em-design-plano_74890-42.avif",
      //       // height: double.infinity,
      //       fit: BoxFit.cover,
      //       height: 300,
      //     ),
      //     SizedBox(
      //       height: 300,
      //       child: Text("Hello World!"),
      //     )
      //   ],
      // ),
      // body: Image.network(
      //   "https://i0.wp.com/espaferro.com.br/wp-content/uploads/2024/06/placeholder-103.png?ssl=1",
      //   height: double.infinity,
      //   fit: BoxFit.fill,
      // ),
      // body: Center(

      //   // child: Column(
      //   //
      //   //   mainAxisAlignment: .center,
      //   //   children: [
      //   //     const Text('You have pushed the button this many times:'),
      //   //     Text(
      //   //       '$_counter',
      //   //       style: Theme.of(context).textTheme.headlineMedium,
      //   //     ),
      //   //   ],
      //   // ),
      //   child: Container(
      //     color: Colors.black38,
      //     width: double.infinity,
      //     child: Column( // Row // Center // Wrap
      //       mainAxisAlignment: MainAxisAlignment.center, // Y
      //       // crossAxisAlignment: CrossAxisAlignment.end, // X
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         Container(
      //           height: 100,
      //           width: double.infinity,
      //           // margin: EdgeInsets.all(50),
      //           // padding: EdgeInsets.all(50),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(25),
      //             color: Colors.red
      //           ),
      //           child: Text(
      //             'Hello',
      //             style: TextStyle(
      //               color: Colors.white
      //             ),
      //           )
      //         ),
      //         Container(
      //           height: 100,
      //           width: double.infinity,
      //           // padding: EdgeInsets.all(50),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(25),
      //             color: Colors.red
      //           ),
      //           child: Text(
      //             'Hello',
      //             style: TextStyle(
      //               color: Colors.white
      //             ),
      //           )
      //         ),
      //       ],
      //     )
      //   )
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
