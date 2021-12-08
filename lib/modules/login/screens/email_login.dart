import 'package:flutter/material.dart';
import 'package:groceries_list/shared/components/general_text_form.dart';
import 'package:groceries_list/shared/components/theme_button.dart';

class EmailLogin extends StatefulWidget {
  const EmailLogin({Key? key}) : super(key: key);

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  bool isPasswordVisible = false;
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> _authData = {
    'name': '',
    'email': '',
    'password': '',
  };
  final TextEditingController passwordController = TextEditingController();

  void _submit() {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GeneralTextForm(
              text: 'Nome',
              icon: Icons.person,
              inputText: TextInputType.name,
              hidePassword: false,
              sufIcon: const SizedBox(width: 1),
              onSaved: (name) => _authData['name'] = name ?? '',
              validator: (_name) {
                final name = _name ?? '';
                if (name.length < 3) {
                  return 'Nome muito curto. Mínimo de 3 digitos.';
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            GeneralTextForm(
              text: 'Email',
              icon: Icons.email_outlined,
              inputText: TextInputType.emailAddress,
              hidePassword: false,
              sufIcon: const SizedBox(width: 1),
              onSaved: (email) => _authData['email'] = email ?? '',
              validator: (_email) {
                final email = _email ?? '';
                if (email.trim().isEmpty || !email.contains('@')) {
                  return 'Por favor informe um email válido.';
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            GeneralTextForm(
              text: 'Senha',
              icon: Icons.lock,
              inputText: TextInputType.visiblePassword,
              hidePassword: true,
              textController: passwordController,
              sufIcon: InkWell(
                child: isPasswordVisible
                    ? const Icon(Icons.visibility_off_outlined, size: 28)
                    : const Icon(Icons.visibility_outlined, size: 28),
                onTap: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              ),
              onSaved: (password) => _authData['password'] = password ?? '',
              validator: (_password) {
                final password = _password ?? '';
                if (password.trim().isEmpty || password.length < 6) {
                  return 'Senha muito curta. Mínimo de 6 digitos.';
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            GeneralTextForm(
              text: 'Confirmar Senha',
              icon: Icons.lock,
              inputText: TextInputType.visiblePassword,
              hidePassword: true,
              sufIcon: InkWell(
                child: isPasswordVisible
                    ? const Icon(Icons.visibility_off_outlined, size: 28)
                    : const Icon(Icons.visibility_outlined, size: 28),
                onTap: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              ),
              validator: (_password) {
                final password = _password ?? '';
                if (password != passwordController.text) {
                  return 'Senhas informadas são diferentes';
                }
                return null;
              },
            ),
            const SizedBox(height: 30),
            ThemeButton(
              buttonName: 'Cadastrar',
              textColor: Colors.white,
              buttonWidth: 0.3,
              onTap: _submit,
            ),
          ],
        ),
      ),
    );
  }
}
