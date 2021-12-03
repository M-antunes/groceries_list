import 'package:flutter/material.dart';
import 'package:groceries_list/models/login/components/google_button.dart';
import 'package:groceries_list/models/login/screens/email_login.dart';

class GoogleLoginPage extends StatefulWidget {
  const GoogleLoginPage({Key? key}) : super(key: key);

  @override
  _GoogleLoginPageState createState() => _GoogleLoginPageState();
}

class _GoogleLoginPageState extends State<GoogleLoginPage> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            child: Image.asset('assets/images/splash.png', height: 150),
          ),
          const SizedBox(height: 20),
          const Text(
            'Entrar com:',
            style: TextStyle(fontSize: 23),
          ),
          const SizedBox(height: 20),
          const GoogleButton(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: 1,
                    color: Colors.grey[300]),
              ),
              const Text(
                'OU',
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: 1,
                    color: Colors.grey[400]),
              ),
            ],
          ),
          const SizedBox(height: 20),
          InkWell(
            child: Card(
              elevation: 4,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.2,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EmailLogin()),
              );
            },
          ),
        ]),
      ),
    );
  }
}
