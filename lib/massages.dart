import 'package:flutter/material.dart';
import 'package:voxial/chat.dart';
import 'package:voxial/homepage.dart'; 


class Massages extends StatefulWidget {
  const Massages({super.key});

  @override
  State<Massages> createState() => _MassagesState();
}

class _MassagesState extends State<Massages> {
  @override
  Widget build(BuildContext context) {
    return massages();
  }
}

class massages extends StatelessWidget {
  const massages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff59AC6E),
        centerTitle: true,
        title: Text(
          "Message",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xff59AC6E),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            width: 1920,
            height: 300,
            child: Column(
              spacing: 20,
              children: [
              
                SizedBox(width: 10, height: 30),
                Text(
                  "You can customize your feed by following topics or people that interest you the most",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10, height: 60),
                Container(
                  width: 800,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search messages',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => chat()),
              );
            },
            child: ListTile(
              leading: CircleAvatar(
                child: Image.network("https://picsum.photos/603/605"),
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
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => chat()),
              );
            },
            child: ListTile(
              leading: CircleAvatar(
                child: Image.network("https://picsum.photos/608/605"),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Gloria",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              trailing: Text(
                "30 Mins ago",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => chat()),
              );
            },
            child: ListTile(
              leading: CircleAvatar(
                child: Image.network("https://picsum.photos/605/605"),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jack",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              trailing: Text(
                "1 Day ago",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => chat()),
              );
            },
            child: ListTile(
              leading: CircleAvatar(
                child: Image.network("https://picsum.photos/600/605"),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bill",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              trailing: Text(
                "3 Hours ago",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.deepOrange,
              padding: EdgeInsets.only(
                top: 50,
                left: 20,
                right: 20,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
            Builder(
              builder:
                  (context) => IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => home()),
                      );
                    },
                  ),
            ),
            IconButton(
              icon: Icon(Icons.local_activity_rounded),
              onPressed: () {},
            ),
            Builder(
              builder:
                  (context) => IconButton(
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
