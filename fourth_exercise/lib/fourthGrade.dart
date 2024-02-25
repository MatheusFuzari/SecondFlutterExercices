import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FourthGrade extends StatelessWidget {
  const FourthGrade({super.key, required this.studentName});
  final String studentName;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FourthGradePage(name: studentName),
    );
  }
}

class FourthGradePage extends StatefulWidget {
  const FourthGradePage({super.key, required this.name});
  final String name;
  @override
  State<FourthGradePage> createState() => _FourthGradePage();
}

class _FourthGradePage extends State<FourthGradePage> {
  final _firstGrade = TextEditingController();
  final _secoundGrade = TextEditingController();
  final _thirdGrade = TextEditingController();
  final _fourthGrade = TextEditingController();
  String _mean = "";
  Padding typer(String hint, TextEditingController controller, bool numeric) {
    if (numeric) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: hint,
          ),
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly
          ], // Only numbers can be entered
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              border: const OutlineInputBorder(), hintText: hint),
        ),
      );
    }
  }

  void _calcAvg() {
    setState(() {
      double calc = (double.parse(_firstGrade.text) +
              double.parse(_secoundGrade.text) +
              double.parse(_thirdGrade.text) +
              double.parse(_fourthGrade.text)) /
          4;
      _mean = calc.toString();
      if (calc >= 5) {
        _mean += "\n Aprovado";
      } else {
        _mean += "\n Reprovado";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print(widget.name);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Grade"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.name),
            Text("Matéria: Química"),
            typer("Digite a primeira nota", _firstGrade, true),
            typer("Digite a segunda nota", _secoundGrade, true),
            typer("Digite a terceira nota", _thirdGrade, true),
            typer("Digite a quarta nota", _fourthGrade, true),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text("A média é: " + _mean),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Voltar"),
          ),
          ElevatedButton(
            onPressed: _calcAvg,
            child: Text("Calcular Média"),
          ),
        ],
      ),
    );
  }
}
