import 'package:flutter/material.dart';
import 'package:groceries_list/models/login/components/theme_button.dart';

class EmailLogin extends StatefulWidget {
  const EmailLogin({Key? key}) : super(key: key);

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          biuldTextForm(
            context,
            'Nome',
            Icons.person,
            TextInputType.name,
            const SizedBox(
              width: 1,
            ),
            false,
          ),
          const SizedBox(height: 10),
          biuldTextForm(
            context,
            'Email',
            Icons.email,
            TextInputType.emailAddress,
            const SizedBox(
              width: 1,
            ),
            false,
          ),
          const SizedBox(height: 10),
          biuldTextForm(
            context,
            'Senha ',
            Icons.lock,
            TextInputType.visiblePassword,
            InkWell(
              child: isPasswordVisible
                  ? const Icon(Icons.visibility_off_outlined, size: 28)
                  : const Icon(Icons.visibility_outlined, size: 28),
              onTap: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
            ),
            isPasswordVisible ? false : true,
          ),
          const SizedBox(height: 20),
          biuldTextForm(
            context,
            'Confirmar Senha',
            Icons.lock,
            TextInputType.visiblePassword,
            InkWell(
              child: isPasswordVisible
                  ? const Icon(Icons.visibility_off_outlined, size: 28)
                  : const Icon(Icons.visibility_outlined, size: 28),
              onTap: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
            ),
            isPasswordVisible ? false : true,
          ),
          const SizedBox(height: 20),
          const ThemeButton(
            buttonName: 'Cadastrar',
            buttonWidth: 0.3,
          ),
        ],
      ),
    );
  }

  Align biuldTextForm(BuildContext context, String text, IconData icon,
      TextInputType inputText, Widget sufIcon, bool hidePassword) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: TextFormField(
          obscureText: hidePassword,
          cursorHeight: 28,
          keyboardType: inputText,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.green[400]!),
            ),
            labelText: text,
            labelStyle: const TextStyle(fontSize: 12),
            icon: Icon(icon, size: 28),
            suffixIcon: sufIcon,
          ),
          style: const TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
