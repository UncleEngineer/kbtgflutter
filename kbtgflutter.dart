import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      // นี่คือโครงการหลักของแอพ
      home: Scaffold(
          appBar: AppBar(
            title: Text('My App')
          ),
          drawer: Drawer(
                    child: Column(
                        children: [
                          // Blue Box
                          Container(
                           height: 100,
                           color: Colors.blue,
                          ),
                          // Text1
                          Text('This is a Drawer'),
                          // Menu 1
                          ListTile(
                            leading: Icon(Icons.photo_album),
                            title: Text('Your Photo Album'),
                            onTap: () {
                              print('This is a Photo');
                            }
                          )
                        ]
                  ) 
                             
            ),
          body: Center(
            child: Container(
                      
                      color: Colors.red,
                      height:300,
                      width:300,
                      child: Align(
                            alignment: Alignment.center,
                            child: Column(
                                children: [
                                  // นี่คือภาพหน้าเพจหลัก
                                  Image(
                                      width:100,
                                      image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                  ),
                                  // ช่องว่างระหว่างรูปภาพและข้อความ
                                  SizedBox(
                                      height:20
                                  ),
                                  // ข้อความที่ 1
                                  Text('Hello',style: TextStyle(fontSize:20,color: Colors.blue)),
                                  // ข้อความที่ 2
                                  Text('KBTG',style: TextStyle(fontSize:30,color: Colors.green)),
                                  // ข้อความที่ 3
                                  Text('Uncle Engineer',style: TextStyle(fontSize:20,color: Colors.black87))                      
                                ]
                            ) // column
                        )
                 )
        
            )
      ),
    );
  }
}