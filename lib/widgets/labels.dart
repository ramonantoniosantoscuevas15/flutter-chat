import 'package:flutter/material.dart';

class labels extends StatelessWidget {
  final String ruta;
  final String ncuenta;
  final String tcuenta;

  const labels({super.key, required this.ruta, required this.ncuenta, required this.tcuenta});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
           Text(
            ncuenta
            ,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            child: Text(
              tcuenta
              ,
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, ruta);
            },
          )
        ],
      ),
    );
  }
}
