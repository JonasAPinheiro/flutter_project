import 'package:flutter/material.dart';
import 'package:flutter_teste/aula09/classes/disciplina.dart';
import 'package:flutter_teste/aula10/widgets/carregamento_widget.dart';
import 'package:flutter_teste/aula10/widgets/disciplina_tile_widget.dart';

class Aula10 extends StatefulWidget {
  const Aula10({super.key});

  @override
  State<Aula10> createState() => _Aula10State();
}

class _Aula10State extends State<Aula10> {
  var _carregando = true;

  Future<List<Disciplina>> carregarDisciplinas() async {
    await Future.delayed(Duration(seconds: 10));
    return Disciplina.gerarDisciplinas();
  }

  void simularCarregamento() async {
    await Future.delayed(Duration(seconds: 10));
    setState(() {
      _carregando = false;
    });
  }

  Future<void> simularFutureBuilder() async {
    await Future.delayed(Duration(seconds: 10));
  }

  Future<void> fireAndForget() async {
    await Future.delayed(Duration(seconds: 10));
    debugPrint("Print executado depois de 10 segundos");
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: carregarDisciplinas(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case .done:
                if (snapshot.hasError || !snapshot.hasData) {
                  return Text("Houve um erro no processamento");
                }

                var disciplinas = snapshot.data as List<Disciplina>;
                return ListView.builder(
                  itemCount: disciplinas.length,
                  itemBuilder: (context, index) =>
                      DisciplinaTileWidget(disciplina: disciplinas[index]),
                );
              default:
                return CarregamentoWidget();
            }
          },
        ),
      ),
    );

    /*return Scaffold(
      body: Center(
        child: _carregando
            ? Column(
                mainAxisAlignment: .center,
                children: [Text("Carregando..."), CircularProgressIndicator()],
              )
            : Text("Bem vindo(a)!"),
      ),
    );
    */
  }
}
