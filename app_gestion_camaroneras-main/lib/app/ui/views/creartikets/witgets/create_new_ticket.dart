import 'package:app_gestion_camaroneras/app/ui/views/creartikets/witgets/tab_Uni_central.dart';
import 'package:app_gestion_camaroneras/app/ui/views/creartikets/witgets/tab_alimentador.dart';
import 'package:app_gestion_camaroneras/app/ui/views/creartikets/witgets/tab_piscina.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class CreateNewTicket extends StatelessWidget {
  const CreateNewTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            TabBar(
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
                indicator: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(25.0)),
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.blue,
                tabs: [
                  Tab(text: 'Piscina'),
                  Tab(text: 'Unidad central'),
                  Tab(text: 'Alimentador'),
                ]),
            // Center(
            Container(
              color: Colors.white,
              height: 600.0,
              child: const TabBarView(children: [
                TabPiscina(),
                TabUnidadCentral(),
                TabAlimentador()
              ]),
            ),
          ],
        ),
      ),
      //),
    );
  }
}
