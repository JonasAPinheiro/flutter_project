import 'package:flutter/material.dart';

class TipoLogin extends StatefulWidget {
  const TipoLogin({
    super.key,
    required this.tipoLoginSelecionado,
    required this.alterarTipoLogin,
  });

  final List<bool> tipoLoginSelecionado;
  final Function(int) alterarTipoLogin;

  @override
  State<TipoLogin> createState() => _TipoLoginState();
}

class _TipoLoginState extends State<TipoLogin> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .end,
      children: [
        Text("Logar com"),
        SizedBox(width: 10),
        ToggleButtons(
          borderRadius: BorderRadius.circular(10),
          onPressed: widget.alterarTipoLogin,
          isSelected: widget.tipoLoginSelecionado,
          children: const [
            Padding(padding: EdgeInsets.all(8.0), child: Text("E-mail")),
            Padding(padding: EdgeInsets.all(8.0), child: Text("CPF")),
            Padding(padding: EdgeInsets.all(8.0), child: Text("Telefone")),
          ],
        ),
      ],
    );
  }
}
