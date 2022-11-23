import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('AutoFillComplete Demo'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           children: [
//             TextFormField(
//               decoration: const InputDecoration(labelText: "Password"),
//               obscureText: true,
//               autofillHints: const [AutofillHints.password], //PWの自動入力
//             ),
//             const SizedBox(height: 20),
//             MaterialButton(
//                 child: const Text("data"),
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           // （2） 実際に表示するページ(ウィジェット)を指定する
//                           builder: (context) => const NextPage()));
//                 })
//           ],
//         ),
//       ),
//     );
//   }
// }

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: MaterialButton(
          onPressed: () {},
          child: const Text('戻る'),
        ),
      ),
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

        //ここからが複数データのフォームを利用する場合のコード

        child: Column(
          children: [
            AutofillGroup(
              //複数項目をセットで保存する場合に使用
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
                    autofillHints: const [AutofillHints.password], //PWの自動入力
                    onEditingComplete: ()=>TextInput.finishAutofillContext(),
                  ),
                ],
              ),
            ),
            MaterialButton(
              child: const Text("data"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // （2） 実際に表示するページ(ウィジェット)を指定する
                    builder: (context) => const NextPage(),
                  ),
                );
              },
            ),
          ],
        ),

        // ここまで
      ),
    );
  }
}
