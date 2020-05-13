import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      // นี่คือโครงการหลักของแอพ
      home: Calculate()// Scaffold
    );
  }
}



class Calculate extends StatefulWidget {
  @override
  _CalculateState createState() => _CalculateState();
}
class _CalculateState extends State<Calculate> {
  
  var product = TextEditingController(); // กล่องสำหรับเก็บชื่อสินค้า
  var quantity = TextEditingController(); // กล่องสำหรับเก็บจำนวน
  var price = TextEditingController(); // กล่องสำหรับเก็บราคา
  
  String result = '<<  ผลลัพท์จะแสดงตำแหน่งนี้  >>';
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      
                      // color: Colors.red,
                      // height:300,
                      width:300,
                      child: Align(
                            alignment: Alignment.center,
                            child: Column(
                                children: [
                                  // นี่คือภาพหน้าเพจหลัก
                                  Image(
                                      width:150,
                                      image: NetworkImage('https://fm.lnwfile.com/tgl8pi.jpg'),
                                  ),
                                  // ช่องว่างระหว่างรูปภาพและข้อความ
                                  SizedBox(height:20),
                                  TextField(
                                      controller: product, // controller คือตำแหน่งการอ้างอิงกล่อง
                                      decoration: InputDecoration(
                                          labelText: 'สินค้า',
                                          border: OutlineInputBorder()
                                      )
                                  ),
                                  SizedBox(height:20),
                                  TextField(
                                      controller: quantity,
                                      decoration: InputDecoration(
                                          labelText: 'จำนวน',
                                          border: OutlineInputBorder()
                                      )
                                  ),
                                  SizedBox(height:20),
                                  TextField(
                                      controller: price,
                                      decoration: InputDecoration(
                                          labelText: 'ราคา',
                                          border: OutlineInputBorder()
                                      )
                                  ),
                                  SizedBox(height:20),
                                  RaisedButton(
                                      child: Text('คำนวณราคารวม'),
                                      onPressed: () {
                                          print('ปุ่มกำลังทำงาน');
                                          print('-------');
                                          print(product.text);
                                          print(quantity.text);
                                          print(price.text);
                                        
                                          var v1 = product.text;
                                          var v2 = int.parse(quantity.text); // int.parse = การแปลงข้อความเป็นตัวเลข
                                          var v3 = int.parse(price.text);
                                          var calculate = v2 * v3;
                                        
                                          setState(() {
                                              // setState = ฟังชั่นสำหรับการรีเฟรชหน้าแอพ
                                              result = 'สินค้า: $v1 จำนวน: $v2  ราคา: $v3 ยอดรวม: $calculate บาท';
                                          });
                                                            
                                      }
                                  ),
                                  SizedBox(height:30),
                                  Text(result, style: TextStyle(fontSize: 20.0, color: Colors.green)),
                                  SizedBox(height:50),
                                  Text('Calculator by KBTG x Uncle Engineer'),
                                  
                                  // ข้อความที่ 1
                                  // Text('Hello',style: TextStyle(fontSize:20,color: Colors.blue)),
                                  // ข้อความที่ 2
                                  // Text('KBTG',style: TextStyle(fontSize:30,color: Colors.green)),
                                  // ข้อความที่ 3
                                  // Text('Uncle Engineer',style: TextStyle(fontSize:20,color: Colors.black87))                      
                                ]
                            ) // column
                        )
                 )
        
            )
      );
  }
}