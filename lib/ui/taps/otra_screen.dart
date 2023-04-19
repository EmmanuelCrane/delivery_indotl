import 'package:flutter/material.dart';

class OtraScreen extends StatefulWidget {
  const OtraScreen({Key? key}) : super(key: key);

  @override
  State<OtraScreen> createState() => _OtraScreenState();
}

class _OtraScreenState extends State<OtraScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Screen numero Dos"),
    );
  }
}
