import 'package:etiket_mobile/utils/styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class TicketCard extends StatefulWidget {
  const TicketCard({Key? key}) : super(key: key);

  @override
  State<TicketCard> createState() => _TicketCardState();
}

class _TicketCardState extends State<TicketCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Styles.primaryColor,
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("BORN PINK", style: Styles.ticketLabel),
                Container(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                      Text(
                        "BLACKPINK WORLD TOUR",
                        style: Styles.smallerTicketLabel,
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Styles.tertiaryColor,
                  textColor: Styles.onTertiaryColor,
                  child: const Text("view detail"),
                )
              ],
            ),
            Container(
              color: Styles.primaryContainerColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_location_filled),
                      Text(
                        "JAKARTA, INDONESIA",
                        style: Styles.ticketLabel,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
