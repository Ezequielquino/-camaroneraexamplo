import 'package:flutter/material.dart';

class TabPiscina extends StatelessWidget {
  const TabPiscina({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.white,
          height: 160.0,
          width: double.infinity,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 10.0),
                Text("  Problema en surtidor",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38)),
              ]),
        ),
        const Text(
          "   Archivos adjuntos",
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const CardArchivo(),
        Row(
          children: const [
            SizedBox(width: 15.0),
            Text(
              "Sintomas: ",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38),
            ),
            Text(
              "No dosifica",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        )
      ],
    );
  }
}

class CardArchivo extends StatelessWidget {
  const CardArchivo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      width: double.infinity,
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _CardArchivo(
            path: "assets/ofi.png",
          ),
          _CardArchivo(
            path: "assets/oficina.png",
          ),
          _CardArchivo(
            path: "assets/laptop.png",
          ),
        ],
      ),
    );
  }

  Widget _CardArchivo({
    required String path,
  }) {
    return Container(
      width: 150.0,
      margin: EdgeInsets.only(left: 15.0),
      padding: EdgeInsets.all(15.0),
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
