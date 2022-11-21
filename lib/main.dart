import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AutoFillComplete Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoFillComplete Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: AutofillGroup( //複数項目をセットで保存する場合に使用
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "e-mail"),
                keyboardType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.email], //emailの自動入力
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Password"),
                obscureText: true,
                autofillHints: const [AutofillHints.password],  //PWの自動入力
              ),
            ],
          ),
        ),
      ),
    );
  }
}
