import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              height: 60.0,
              width: 300.0,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Center(child: Text("Guardar")),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 60.0,
              width: 300.0,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 231, 231),
                  borderRadius: BorderRadius.circular(20.0)),
              child: Center(child: Text("Cancelar")),
            ),
          ],
        ),
      ),
    );
  }
}
