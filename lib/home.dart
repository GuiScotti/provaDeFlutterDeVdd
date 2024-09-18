import 'package:flutter/material.dart';
import 'package:prova/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 0, 13, 255)),
          useMaterial3: true,
        ),
    );
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
    return Scaffold(
      appBar: AppBar(
        title: Text('BEM VINDO A TELA INICIAL!'),
      ),
      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('scotti', style: TextStyle(fontSize: 24)),
              accountEmail: Text('scotti@teste.com'),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white, child: Icon(Icons.person))),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Sair'),
          )
        ],
      )),
    );
  }
}
