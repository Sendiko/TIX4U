import 'package:flutter/cupertino.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({
    super.key,
    required this.text
  });
  final String text;

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Event"),
    );
  }
}
