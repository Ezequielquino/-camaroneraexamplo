import 'package:app_gestion_camaroneras/app/ui/views/ticket/widgets/camaronera_ticket.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket/widgets/tab_porsincronizar.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket/widgets/tab_sincronizados.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListTickets extends StatelessWidget {
  const ListTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        top: false,
        child: ListView(
          children: [
            Container(
              child: CamaroneraTicket(),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                "Mis tickets",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.h),
            const TabBar(
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
                isScrollable: false,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: 'Por sincronizar',
                  ),
                  Tab(text: 'Sincronizados'),
                ]),
            // Center(
            Container(
              color: Colors.white,
              height: 730.h,
              child: const TabBarView(
                children: [TabPorSincronizar(), TabSincronizados()],
              ),
            ),
          ],
        ),
      ),
      //),
    );
  }
}
