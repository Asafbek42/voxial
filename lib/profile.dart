import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return profile1();
  }
}

class profile1 extends StatelessWidget {
  const profile1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFFcdc26a)),
      backgroundColor: Color(0xFFcdc26a),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(26),
                    child: Image.network("https://picsum.photos/801/500"),
                  ),
                ],
              ),
              ListTile(
                leading: Image.network("https://picsum.photos/401/601"),
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
                    Text("USA"),
                  ],
                ),
                trailing: Text(
                  "15 Mins ago",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(width: 10, height: 30),
              Text(
                "Search for your friends on the app and connect with them. You can also invite your friends who are not on the app yet to join you.The best way to get the most out of our app is to participate actively. Join groups, comment on posts, and connect with new people.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10, height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.link)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
