import 'package:app_gestion_camaroneras/app/ui/views/assignments/widgets/tickets.dart';
import 'package:flutter/material.dart';

class TabPorSincronizar extends StatelessWidget {
  const TabPorSincronizar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 700.h,
      color: Colors.white,
      child: Tickets(),
    );
  }
}
