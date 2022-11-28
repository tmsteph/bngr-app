import 'main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Signup());
}

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BNGR',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const SignupPage(title: 'Signup'),
    );
  }
}

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext content) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Sign in Here'),
            const Text('Name'),
            ElevatedButton(
                onPressed: () {
                  MaterialPageRoute(builder:(context) => const MyHomePage()),
                },
                child: const Text('Press to go back')),
          ],
        ),
      ),
    );
  }
}
