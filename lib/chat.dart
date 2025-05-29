import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return chat();
  }
}

class chat extends StatelessWidget {
  const chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Image.network("https://picsum.photos/403/605"),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mark Ong",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text("Online"),
                ],
              ),
              trailing: Row(
                spacing: 30,
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.phone), Icon(Icons.camera_alt_rounded)],
              ),
            ),
            Container(
              height: 700,
              width: 1920,
              color: Color(0xffFFDDDD),
              child: Column(
                children: [
                  SizedBox(width: 30, height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        width: 200,
                        height: 50,
                        child: Text(
                          'Hi',
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                    ],
                  ),




                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        width: 200,
                        height: 50,
                        child: Text(
                          'Hello',
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
