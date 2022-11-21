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

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             children: [
//               TextFormField(
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: const InputDecoration(labelText: "e-mail"),
//               ),
//               TextFormField(
//                 keyboardType: TextInputType.visiblePassword,
//                 decoration: const InputDecoration(labelText: "Password"),
//                 obscureText: true,
//                 autofillHints: const [AutofillHints.password],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoFillComplete Sample'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: "e-mail"),
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(labelText: "Password"),
                obscureText: true,
                autofillHints: const [AutofillHints.password],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
