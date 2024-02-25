import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const valorant());
}

class valorant extends StatelessWidget {
  const valorant({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const valorantPage(),
    );
  }
}

class valorantPage extends StatefulWidget {
  const valorantPage({super.key});

  @override
  State<valorantPage> createState() => _valorantPage();
}

class _valorantPage extends State<valorantPage> {
  final List<String> _drivers = ["Aspas", "pAncada", "Saadhak", "Cauanzin"];
  final List<String> _driversAge = ["20", "24", "26", "18"];
  final List<String> _driversChampionship = ["1", "1", "1", "0"];
  final List<String> _driversImage = [
    "https://liquipedia.net/commons/images/thumb/1/17/LOUD_aspas_at_the_VALORANT_Champions_2022.jpg/600px-LOUD_aspas_at_the_VALORANT_Champions_2022.jpg",
    "https://liquipedia.net/commons/images/thumb/5/5e/LOUD_pANcada_at_the_VALORANT_Champions_2022.jpg/600px-LOUD_pANcada_at_the_VALORANT_Champions_2022.jpg",
    "https://liquipedia.net/commons/images/thumb/f/fa/LOUD_Saadhak_at_the_VALORANT_Champions_2022.jpg/600px-LOUD_Saadhak_at_the_VALORANT_Champions_2022.jpg",
    "https://liquipedia.net/commons/images/thumb/e/e8/Cauanzin_at_the_VCT_2023_LOCKIN_S%C3%A3o_Paulo.jpg/600px-Cauanzin_at_the_VCT_2023_LOCKIN_S%C3%A3o_Paulo.jpg"
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
        ));
  }
}
