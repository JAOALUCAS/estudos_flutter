import 'package:flutter/material.dart';
import 'package:flutter_apps/views/widget_tree.dart';

class SettingsPage extends StatefulWidget {
  
  const SettingsPage({
    super.key,
    required this.title
  });

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  TextEditingController controller = TextEditingController();
  bool? isChecked1 = false;
  bool? isChecked2 = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = 'e1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(onPressed: () {
          Navigator.pop(context);
        },),
        automaticallyImplyActions: false,
      ),
      body: 
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ElevatedButton(onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 5),
                      content: Text('SnackBar'),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                }, child: Text('Open Snackbar')),
                Divider(
                  color: Colors.teal,
                  thickness: 2.0,
                  endIndent: 200.0,
                ),
                Container(
                  height: 40.0,
                  child: VerticalDivider(),
                ),
                ElevatedButton(onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Alert Title'),
                        content: Text('Alert Content'),
                        actions: [
                          FilledButton(onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Close'))
                        ],
                      );
                    },
                  );
                }, child: Text('Open Snackbar')),
                DropdownButton(
                  value: menuItem,
                  items: [
                    DropdownMenuItem(
                      value: 'e1',
                      child: Text('Element 1')
                    ),                
                    DropdownMenuItem(
                      value: 'e2',
                      child: Text('Element 2')
                    ),                
                    DropdownMenuItem(
                      value: 'e3',
                      child: Text('Element 3')
                    ),                
                  ],
                  onChanged: (String? value) => {
                    setState(() {
                      menuItem = value;
                    })
                  },
                ),
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                  onEditingComplete: () => setState(() {}),
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
                  title: Text('Checkbox'),
                  tristate: true,
                  value: isChecked2,
                  onChanged: (bool? value){
                  setState(() {
                    isChecked2 = value;
                  });
                }),
                Switch(
                  value: isSwitched, 
                  onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                }),
                SwitchListTile.adaptive(
                  title: Text('Switch'),
                  value: isSwitched, 
                  onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                }),
                Slider(
                  max: 50.0,
                  value: sliderValue, 
                  divisions: 50,
                  onChanged: (double value) {
                    setState(() {
                      sliderValue = value;
                    });
                    print(value);
                  },
                ),
                GestureDetector(
                  onTap: () {
                    print('Image Selected!');
                  },
                  child: Image.asset(
                    "assets/images/wallpaper-de-paisagem-em-design-plano_74890-42.avif",
                    // height: double.infinity,
                    fit: BoxFit.cover,
                    height: 300,
                  ),
                ),
                InkWell(
                  splashColor: Colors.amberAccent,
                  onTap: () {
                    print('Image Selected!');
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFf368e0)
                  ),
                  child: Text('Click me!')
                ),
                FilledButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFf368e0)
                  ),
                  child: Text('Click me!')
                ),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFf368e0)
                  ),
                  child: Text('Click me!')
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('Click me!')
                ),
                CloseButton(),
                BackButton()
              ],
            ),
          ),
      ),
    );
  }
}