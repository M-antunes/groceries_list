import 'package:flutter/material.dart';

class YourLists extends StatelessWidget {
  const YourLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: 'Olá, ',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
                TextSpan(
                    text: 'Usuário',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text('Suas Listas'),
      ),
    );
  }
}
