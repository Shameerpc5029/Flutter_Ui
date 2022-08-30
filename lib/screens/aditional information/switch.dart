import 'package:flutter/material.dart';

class SwitchBt extends StatefulWidget {
  const SwitchBt({Key? key}) : super(key: key);

  @override
  State<SwitchBt> createState() => _SwitchBtState();
}

class _SwitchBtState extends State<SwitchBt> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
        value: status,
        onChanged: (value) {
          return setState(() {
            status = value;
          });
        });
  }
}
