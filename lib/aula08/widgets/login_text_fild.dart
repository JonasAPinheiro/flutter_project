import 'package:flutter/material.dart';
import 'package:flutter_teste/aula08/classes/login_details.dart';

class LoginTextFild extends StatefulWidget {
  const LoginTextFild({
    super.key,
    required this.controller,
    required this.tipoLogin,
  });

  final TextEditingController controller;
  final TiposLogin tipoLogin;

  @override
  State<LoginTextFild> createState() => _LoginTextFildState();
}

class _LoginTextFildState extends State<LoginTextFild> {
  var loginDetails = LoginDetails.loginDetails();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text(loginDetails[widget.tipoLogin]!.label),
        hint: Text(loginDetails[widget.tipoLogin]!.hint),
        prefixIcon: loginDetails[widget.tipoLogin]!.prefixIcon,
      ),
    );
  }
}
