import 'package:chat_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UsuariosScreen extends StatefulWidget {
  const UsuariosScreen({Key? key}) : super(key: key);

  @override
  State<UsuariosScreen> createState() => _UsuariosScreenState();
}

class _UsuariosScreenState extends State<UsuariosScreen> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final usuarios = [
    Usuario(online: true, email: 'Test1@test.com', nombre: 'Ronny', uid: '1'),
    Usuario(online: true, email: 'Test2@test.com', nombre: 'jose', uid: '2'),
    Usuario(online: false, email: 'Test3@test.com', nombre: 'juana', uid: '3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'mi nombre',
            style: TextStyle(color: Colors.black87),
          ),
          elevation: 1,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.black87,
              )),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.check_circle,
                color: Colors.blue[400],
              ),
              //child: const Icon(Icons.offline_bolt, color: Colors.red,),
            )
          ],
        ),
        body: SmartRefresher(
          controller: _refreshController,
          enablePullDown: true,
          onRefresh: _cargarUsuarios,
          header:  WaterDropHeader(
            complete: Icon(Icons.check, color: Colors.blue[400],),
            waterDropColor: Colors.blueAccent,
          ),
          child: _listViewUsuarios(),
          )
            );
  }

  ListView _listViewUsuarios() {
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
          itemBuilder: (_,i)=> _usuarioListTile(usuarios[i]),
          separatorBuilder: (_,i)=> Divider(),
          itemCount: usuarios.length
          );
  }

  ListTile _usuarioListTile(Usuario usuario) {
    return ListTile(
            title: Text(usuario.nombre),
            subtitle: Text(usuario.email),
            leading: CircleAvatar(
              backgroundColor: Colors.blue[100],
              child: Text(usuario.nombre.substring(0,2)),
            ),
            trailing: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: usuario.online ? Colors.green[300]
                       : Colors.red,
                borderRadius: BorderRadius.circular(100)
              ),
            ),
          );
  }
  _cargarUsuarios() async{
     
    await Future.delayed(Duration(milliseconds: 1000));
    
    _refreshController.refreshCompleted();
  }
  
  
}
