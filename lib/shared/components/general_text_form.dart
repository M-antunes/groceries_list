import 'package:flutter/material.dart';

class GeneralTextForm extends StatefulWidget {
  final String text;
  final IconData icon;
  final TextInputType inputText;
  final Widget sufIcon;
  final bool hidePassword;
  final Function(String?)? onSaved;
  final TextEditingController? textController;
  final String? Function(String?) validator;
  const GeneralTextForm({
    Key? key,
    required this.text,
    required this.icon,
    required this.inputText,
    required this.sufIcon,
    required this.hidePassword,
    this.onSaved,
    this.textController,
    required this.validator,
  }) : super(key: key);

  @override
  State<GeneralTextForm> createState() => _GeneralTextFormState();
}

class _GeneralTextFormState extends State<GeneralTextForm> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: TextFormField(
          obscureText: widget.hidePassword,
          cursorHeight: 28,
          keyboardType: widget.inputText,
          controller: widget.textController,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.green[400]!),
            ),
            labelText: widget.text,
            labelStyle: const TextStyle(fontSize: 15),
            icon: Icon(widget.icon, size: 28),
            suffixIcon: widget.sufIcon,
          ),
          style: const TextStyle(fontSize: 12),
          onSaved: widget.onSaved,
          validator: widget.validator,
        ),
      ),
    );
  }
}
