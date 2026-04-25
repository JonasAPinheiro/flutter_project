import 'package:flutter/material.dart';
import 'package:flutter_teste/aula09/classes/disciplina.dart';

class DisciplinaCard extends StatelessWidget {
  final Disciplina disciplina;

  const DisciplinaCard({
    super.key,
    required this.disciplina,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            SizedBox(
              width: 100,
              child: Center(
                child: Text(disciplina.codigo),
              ),
            ),
            Column(
              mainAxisAlignment: .spaceEvenly,
              crossAxisAlignment: .start,
              children: [Text(disciplina.nome), Text(disciplina.professor)],
            ),
          ],
        ),
      ),
    );
  }
}
