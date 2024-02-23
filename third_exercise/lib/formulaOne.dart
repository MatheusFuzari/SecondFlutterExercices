import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:third_exercise/cblol.dart';
void main() {
  runApp(const formulaOne());
}

class formulaOne extends StatelessWidget {
  const formulaOne({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const formulaOnePage(),
    );
  }
}

class formulaOnePage extends StatefulWidget {
  const formulaOnePage({super.key});

  @override
  State<formulaOnePage> createState() => _formulaOnePage();
}

class _formulaOnePage extends State<formulaOnePage> {
  final List<String> _drivers = [
    "Lewis Hamilton",
    "Sebastian Vettel",
    "Max Verstappen",
    "Charles Leclerc"
  ];
  final List<String> _driversAge = ["39", "36", "26", "26"];
  final List<String> _driversChampionship = ["7", "4", "3", "0"];
  final List<String> _driversImage = [
    "https://classic.exame.com/wp-content/uploads/2021/04/iwc-lewishamilton-01-1.jpg?quality=70&strip=info&w=1024",
    "https://p2.trrsf.com/image/fget/cf/1200/1600/middle/images.terra.com/2022/07/28/foto-unica_-sebastian-vettel-apos-conquistar-seu-4%C2%B0-titulo,-no-gp-da-india-de-2013-qy4y6ppo33n7.jpg",
    "https://cdn.ntvspor.net/1273bc8020614d37a4fc08c94b1c0d68.jpg?mode=crop&w=940&h=626",
    "https://www.rbsdirect.com.br/filestore/3/4/4/0/5/8/4_c04dbdca014ad3f/4850443_272b6d72d4e70f7.jpg?w=700"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Drivers?"),
      ),
      body: Center(
        child: ListView.separated(
          padding: const EdgeInsets.all(8.0),
          itemCount: _drivers.length,
          itemBuilder: (BuildContext context, index) {
            return Container(
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.black,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 160,
                      width: 140,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(_driversImage[index]),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          _drivers[index],
                          style: TextStyle(
                              color: Colors.red.shade800,
                              fontSize: 15,
                              fontFamily: "Persona",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Icon(
                              FontAwesomeIcons.crown,
                              size: 12,
                              color: Colors.red.shade800,
                            ),
                          ),
                          Text(
                            "   =  ${_driversChampionship[index]}x",
                            style: TextStyle(
                                color: Colors.red.shade800,
                                fontSize: 15,
                                fontFamily: "Persona",
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        "Idade  =  ${_driversAge[index]}",
                        style: TextStyle(
                            color: Colors.red.shade800,
                            fontSize: 15,
                            fontFamily: "Persona",
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, index) => const Divider(),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => cblol()));
          }, child: Text("Next")),
    );
  }
}
