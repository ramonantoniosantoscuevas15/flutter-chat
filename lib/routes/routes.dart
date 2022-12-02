import 'package:chat_app/screens/screens.dart';
import 'package:flutter/material.dart';


final Map<String, Widget Function(BuildContext)> appRoutes = {
  'usuarios': (_)=> const UsuariosScreen(),
  'login' : (_)=> const LoginScreen(),
  'chat': (_)=> const ChatScreen(),
  'loading': (_)=> const LoadingScreen(),
  'register': (_)=> const RegisterScreen()
};
