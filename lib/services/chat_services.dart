import 'package:chat_app/global/globals.dart';
import 'package:chat_app/models/models.dart';
import 'package:chat_app/services/auth_service.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ChatService with ChangeNotifier {
  Usuario? usarioPara;

  Future<List<Mensaje>> getChat(String usuarioID) async{
 
    String? token = await AuthService.getToken();
    final uri = Uri.parse('${ Environment.apiUrl }/mensajes/$usuarioID');
    final resp = await http.get(uri,
     headers: {
      'Content-Type': 'application/json',
      'x-token': token.toString()
    }
    );
   
    final mensajesResp = mensajesResponseFromJson(resp.body);
    
    return mensajesResp.mensajes;
 
 
  }
  

}
