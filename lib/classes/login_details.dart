// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

enum TiposLogin { email, cpf, telefone }

class LoginDetails {
  late final String hint;
  late final String label;
  late final Icon prefixIcon;

  LoginDetails({
    required this.hint,
    required this.label,
    required this.prefixIcon,
  });

  static Map<TiposLogin, LoginDetails> loginDetails() {
    return {
      TiposLogin.email: LoginDetails(
        hint: "usuario@email.com",
        label: "E-mail",
        prefixIcon: Icon(Icons.mail),
      ),
      TiposLogin.cpf: LoginDetails(
        hint: "000.000.000-00",
        label: "CPF",
        prefixIcon: Icon(Icons.onetwothree),
      ),
      TiposLogin.telefone: LoginDetails(
        hint: "(11) 12345-6789",
        label: "Telefone",
        prefixIcon: Icon(Icons.phone),
      ),
    };
  }
}
