import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement(){ print('decrement');}
  void increment(){ print ('increment');}
  @override
  Widget build(BuildContext content) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Pode entrar!",
            style: TextStyle(
              fontSize: 36,
              color: Color.fromARGB(255, 4, 87, 154),
              fontWeight: FontWeight.w700
            ),
          ),
          Text("0",
            style: TextStyle(
              fontSize: 26,
              color: Color.fromARGB(255, 4, 87, 154),
              fontWeight: FontWeight.w700
            ),
          ),
          const Padding(padding: EdgeInsets.all(40),
          child: Text('0',
            style: TextStyle(
              fontSize: 100,
              color: Color.fromARGB(255, 4, 87, 15)
            ),
            ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: decrement,
                  child: Text('Sair'),
                  ),
                  TextButton(onPressed: increment,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white
                  ),
                  child: Text('Entrar'),
                  ),
            ]
          )
        ],
      )
    );
  }
}