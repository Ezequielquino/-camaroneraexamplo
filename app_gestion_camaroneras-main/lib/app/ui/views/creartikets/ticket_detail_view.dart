import 'package:app_gestion_camaroneras/app/ui/views/creartikets/witgets/create_new_ticket.dart';
import 'package:app_gestion_camaroneras/app/ui/views/creartikets/witgets/info_ticket.dart';
import 'package:app_gestion_camaroneras/app/ui/views/creartikets/ticket_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CrearTiketsView extends StatelessWidget {
  const CrearTiketsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CrearTiketsController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: const [Icon(Icons.chevron_left)],
        ),
        body: ListView(
          children: const [
            InfoTiket(),
            Text(
              "Crear Nuevo Ticket",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            CreateNewTicket()
          ],
        ),
      ),
    );
  }
}
