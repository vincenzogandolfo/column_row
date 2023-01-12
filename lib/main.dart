import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Row & Column')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                    child: Text('Row',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
                const SizedBox(width: 5),
                Container(color: Colors.greenAccent, height: 100, width: 100),
                const Spacer(flex: 2),
                Container(color: Colors.redAccent, height: 100, width: 100),
                const Spacer(flex: 5),
                Container(color: Colors.blue, height: 100, width: 100),
              ],
            ),
            const SizedBox(height: 50),
            Column(
              children: [
                const Center(
                    child: Text('Column',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
                const SizedBox(height: 5),
                Container(color: Colors.greenAccent, height: 100, width: 100),
                const SizedBox(
                  width: 100,
                  height: 20,
                  child: Divider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
                ),
                Container(color: Colors.redAccent, height: 100, width: 100),
                const SizedBox(
                  height: 20,
                  width: 100,
                  child: Divider(
                    thickness: 5,
                    color: Colors.black,
                  ),
                ),
                Container(color: Colors.blue, height: 100, width: 100),
              ],
            )
          ],
        ),
      ),
    );
  }
}
