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
  final List<String> _drivers = [
    "Aspas",
    "pAncada",
    "Saadhak",
    "Cauanzin"
  ];
  final List<String> _driversAge = ["26", "23", "26", "24"];
  final List<String> _driversChampionship = ["5", "4", "4", "1"];
  final List<String> _driversImage = [
    "https://cdn.ome.lt/qfUU2TUEM_sW6Ff2lrpUGPdwtP0=/770x0/smart/uploads/conteudo/fotos/tinowns-loud-1.jpeg",
    "https://s2-ge.glbimg.com/AS55dnMaIRzB1i6YyufK_reh3u8=/0x0:1920x1280/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2022/W/y/I7bZIpSQOtKDaQpn4dKg/titan-lol-red-canids-cblol-2022.jpg",
    "https://s2-ge.glbimg.com/1mD7fqUy1WZxo2EalNzG5A3uSLY=/0x0:640x427/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2019/G/r/nv88MVQCKkYD9lbYX5WQ/48505516487-967d8f00c7-z.jpg",
    "https://s2-ge.glbimg.com/Y4oE9-gg1hQFYCd8Vg-vsXJqP5w=/0x0:1919x1280/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2023/S/M/NtvA75SHOJnO4r5zAH5Q/52642085687-548155b217-k.jpg"
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
