import 'package:flutter/material.dart';
import 'package:prova/home.dart';

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
        home: const login(),
        routes: {
          '/main': (context) => const MyHomePage(),
        });
  }
}

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 25),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor preencha seu email!';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: Text('Email'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                )),
            Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextFormField(
                  validator: (value) {
                    if (value != null) {
                      return 'Por favor preencha sua senha!';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: Text('Senha'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                )),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print('validou');
                    }
                    Navigator.pushNamed(context, '/main');
                  },
                  child: Text('Entrar')),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
