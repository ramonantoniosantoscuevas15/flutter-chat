// ignore_for_file: avoid_print

import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Logo(
                  titulo: 'Registro',
                ),
                _Form(),
                const labels(
                  ruta: 'login', ncuenta: '¿Tienes Cuenta?', tcuenta: 'Ingresa Ahora!',
                ),
                const Text(
                  'Terminos Y Condiciones',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.perm_identity,
            placehorder: 'Nombre',
            keyboardType: TextInputType.text,
            textcontroller: nameCtrl,
          ),
          CustomInput(
            icon: Icons.email_outlined,
            placehorder: 'Email',
            keyboardType: TextInputType.emailAddress,
            textcontroller: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outlined,
            placehorder: 'Contraseña',
            textcontroller: passCtrl,
            isPassword: true,
          ),
          BottonAzul(
            text: 'Ingresar',
            onPressed: () {
              print(nameCtrl);
              print(emailCtrl.text);
              print(passCtrl.text);
            },
          )
        ],
      ),
    );
  }
}
