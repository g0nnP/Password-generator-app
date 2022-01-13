import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String password = 'contraseña';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(password, style: const TextStyle(
              fontSize: 30
            ),),
            CheckboxListTile(
              title: const Text('Numbers'),
              value: true,
              onChanged: (value){}
            ),
            CheckboxListTile(
              title: const Text('Special caracters'),
              value: true,
              onChanged: (value){}
            ),
            Slider(
              value: 128,
              onChanged: (value){},
              min: 8,
              max: 128
            )
          ],
        ),
      ),
    );
  }
}