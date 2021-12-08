import 'package:flutter/material.dart';
import 'package:groceries_list/modules/login/components/google_button.dart';
import 'package:groceries_list/modules/login/components/login_divider.dart';
import 'package:groceries_list/shared/constants/app_routes.dart';

class OptionalLogin extends StatefulWidget {
  const OptionalLogin({Key? key}) : super(key: key);

  @override
  _OptionalLoginState createState() => _OptionalLoginState();
}

class _OptionalLoginState extends State<OptionalLogin> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            child: Image.asset('assets/images/splash.png', height: 120),
          ),
          const SizedBox(height: 20),
          const Text(
            'Entrar com',
            style: TextStyle(fontSize: 23),
          ),
          const SizedBox(height: 20),
          const GoogleButton(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LoginDivider(),
              Text(
                'OU',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              const LoginDivider(),
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
              Navigator.pushNamed(context, AppRoutes.emailLogin);
            },
          ),
        ]),
      ),
    );
  }
}
