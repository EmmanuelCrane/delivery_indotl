import 'package:flutter/material.dart';

class NuevaScreen extends StatefulWidget {
  const NuevaScreen({Key? key}) : super(key: key);

  @override
  State<NuevaScreen> createState() => _NuevaScreenState();
}

class _NuevaScreenState extends State<NuevaScreen> {
  int price = 90;

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(8), children: <Widget>[
      Card(
          child: Column(
        children: [
          ListTile(
            leading: const Image(
              image: NetworkImage(
                  "https://imgs.search.brave.com/PhQD4f23ZNlQkQT9h5nPrrZDljGxVTRsiZBT2RNiRgU/rs:fit:720:712:1/g:ce/aHR0cHM6Ly93d3cu/bGF3eWVyc2FuZHNl/dHRsZW1lbnRzLmNv/bS9ibG9nL3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDE1LzA1L1N0/YXJidWNrcy1Mb2dv/LmpwZw"),
            ),
            title: const Text("Starbucks (Cuernavaca)"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Cafe/Bebidas",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                Text(
                  "MX$price",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ],
            ),
          )
        ],
      )),
    ]);
  }
}
