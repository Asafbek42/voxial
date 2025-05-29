import 'dart:math';
import 'package:flutter/material.dart';
import 'package:voxial/connectwithfriends.dart';
import 'package:voxial/massages.dart';
import 'package:voxial/profile.dart';
import 'package:voxial/profile2.dart';

class home extends StatefulWidget {
  final List<String> selectedLabels;

  const home({super.key, this.selectedLabels = const []});

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => massages()),
              );
            },
            child: Icon(Icons.mail_outline_rounded, size: 45),
          ),
          SizedBox(width: 16, height: 2),
        ],
        backgroundColor: Color(0xFF000000),
        automaticallyImplyLeading: false,
        leading: Image.asset("assets/images/romb.png"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Explore Feeds",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1450,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        ListTile(
                          leading: Image.network(
                            "https://picsum.photos/403/605",
                          ),
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
                              Text("Paris"),
                            ],
                          ),
                          trailing: Text(
                            "2 Mins ago",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(width: 10, height: 30),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => profile1(),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(26),
                            child: Image.network(
                              "https://picsum.photos/801/500",
                            ),
                          ),
                        ),
                        SizedBox(width: 10, height: 40),
                        Text(
                          "Search for your friends on the app and connect with them. You can also invite your friends who are not on the app yet to join you.",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(width: 10, height: 30),
                    Column(
                      children: [
                        ListTile(
                          leading: Image.network(
                            "https://picsum.photos/401/601",
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bretti",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 20),
                              Text("USA"),
                            ],
                          ),
                          trailing: Text(
                            "2 Mins ago",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(width: 10, height: 30),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => profile2(),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(26),
                            child: Image.network(
                              "https://picsum.photos/800/500",
                            ),
                          ),
                        ),
                        SizedBox(width: 10, height: 40),
                        Text(
                          "Search for your friends on the app and connect with them. You can also invite your friends who are not on the app yet to join you.",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Things that you are interested in',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (widget.selectedLabels.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.selectedLabels.map((label) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      label,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                  )).toList(),
                ),
              )
            else
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'No interests selected.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
            Container(
              color: Colors.deepOrange,
              padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Profile', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                  Icon(Icons.archive, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 10),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey[300],
              child: Icon(Icons.image, size: 40, color: Colors.grey[600]),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Text('120', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Post'),
                  ],
                ),
                Column(
                  children: const [
                    Text('12M', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Following'),
                  ],
                ),
                Column(
                  children: const [
                    Text('1.2k', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Following'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.image, size: 40, color: Colors.grey[600]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.local_activity_rounded),
              onPressed: () {},
            ),
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.person_rounded),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
