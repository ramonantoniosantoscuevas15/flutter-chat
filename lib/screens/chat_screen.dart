import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
   
  const ChatScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Column(
          children:  [
            CircleAvatar(
              backgroundColor: Colors.blue[100],
              maxRadius: 14,
              child: const Text('Te', style: TextStyle(fontSize: 12),
              ),
            ),
            const SizedBox(height: 3,),
            const Text('Ronny Alberto', style: TextStyle(color: Colors.black87, fontSize: 12),)
          ],
        ),
        elevation: 1,

      ),
      body: Container(
        child: Column(
          children: [
            Flexible(child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (_,i)=> Text('$i'),
              reverse: true,
              )
              ),
              const Divider(height: 1,),
              //caja de texto
              Container(
                color: Colors.white,
                height: 100,

              )
          ],
        ),
      ),
    );
  }
}