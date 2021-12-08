import 'package:flutter/material.dart';
import 'package:groceries_list/shared/auth/auth.dart';
import 'package:groceries_list/shared/components/app_snack_bar.dart';
import 'package:groceries_list/shared/components/general_text_form.dart';
import 'package:groceries_list/shared/components/theme_button.dart';
import 'package:provider/provider.dart';

enum AuthMode { login, signUp }

class EmailLogin extends StatefulWidget {
  const EmailLogin({Key? key}) : super(key: key);

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  bool isPasswordVisible = true;
  bool isLoading = false;
  AuthMode _authMode = AuthMode.login;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final Map<String, String> _authData = {
    // 'name': '',
    'email': '',
    'password': '',
  };

  bool _isLogin() => _authMode == AuthMode.login;
  bool _isSignUp() => _authMode == AuthMode.signUp;

  void switchAuthMode() {
    setState(() {
      if (_isLogin()) {
        _authMode = AuthMode.signUp;
      } else {
        _authMode = AuthMode.login;
      }
    });
  }

  Future submit() async {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
    setState(() => isLoading = true);
    _formKey.currentState?.save();
    Auth auth = Provider.of(context, listen: false);

    if (_isLogin()) {
      //login
    } else {
      // register
      await auth.signUp(
        _authData['email']!,
        _authData['password']!,
      );
    }
    setState(() => isLoading = false);

    ScaffoldMessenger.of(context).showSnackBar(getAppSnackBar(
        message: 'Usuário cadastrado com sucesso.',
        type: SnackBarType.success));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              Text(
                _isSignUp() ? 'Cadastro' : 'Login',
                textAlign: TextAlign.end,
                style: const TextStyle(fontSize: 25),
              ),

              const SizedBox(height: 20),
              // if (isLoginOption)
              //   GeneralTextForm(
              //     text: 'Nome',
              //     icon: Icons.person,
              //     inputText: TextInputType.name,
              //     hidePassword: false,
              //     sufIcon: const SizedBox(width: 1),
              //     onSaved: (name) => _authData['name'] = name ?? '',
              //     validator: (_name) {
              //       final name = _name ?? '';
              //       if (name.length < 3) {
              //         return 'Nome muito curto. Mínimo de 3 digitos.';
              //       }
              //       return null;
              //     },
              //   ),
              // const SizedBox(height: 15),
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
                hidePassword: isPasswordVisible,
                textController: passwordController,
                sufIcon: InkWell(
                  child: isPasswordVisible
                      ? const Icon(Icons.visibility_outlined, size: 28)
                      : const Icon(Icons.visibility_off_outlined, size: 28),
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
              if (_isSignUp())
                GeneralTextForm(
                  text: 'Confirmar Senha',
                  icon: Icons.lock,
                  inputText: TextInputType.visiblePassword,
                  hidePassword: isPasswordVisible,
                  sufIcon: InkWell(
                    child: isPasswordVisible
                        ? const Icon(Icons.visibility_outlined, size: 28)
                        : const Icon(Icons.visibility_off_outlined, size: 28),
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
              isLoading
                  ? const CircularProgressIndicator()
                  : ThemeButton(
                      buttonName: _isSignUp() ? 'Cadastrar' : 'Entrar',
                      textColor: Colors.white,
                      buttonWidth: 0.3,
                      onTap: submit,
                    ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _isSignUp()
                        ? 'Já possui cadastro?'
                        : 'Não possui cadastro?',
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    child: const Text(
                      'Clique aqui',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    onPressed: switchAuthMode,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
