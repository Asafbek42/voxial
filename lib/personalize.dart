import 'package:flutter/material.dart';
import 'package:voxial/homepage.dart';

class Personalize extends StatefulWidget {
  const Personalize({super.key});

  @override
  State<Personalize> createState() => _PersonalizeState();
}

class _PersonalizeState extends State<Personalize> {
  List<Color> buttonColors = List.generate(16, (_) => Colors.white);

  final List<String> buttonLabels = [
    'News and Events',
    'Entertainment',
    'Lifestyle',
    'Personal Development',
    'Humor and Memes',
    'Sports',
    'Animals',
    'Science',
    'Education',
    'History',
    'Technology Information',
    'Product and Brand',
    'Scary Things',
    'Marketing',
    'Movies',
    'Music',
  ];

  List<String> selectedLabels = []; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF59AC6E),
      ),
      backgroundColor: const Color(0xFF59AC6E),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Personalize your experience",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text(
                "You can customize your feed by following topics or people that interest you the most",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 760,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: buttonLabels.length,
                  itemBuilder: (context, index) {
                    return SelectButton(
                      label: buttonLabels[index],
                      color: buttonColors[index],
                      onTap: () {
                        setState(() {
                          if (buttonColors[index] == Colors.white) {
                            buttonColors[index] = Colors.black;
                            selectedLabels.add(buttonLabels[index]);
                          } else {
                            buttonColors[index] = Colors.white;
                            selectedLabels.remove(buttonLabels[index]);
                          }
                        });
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => home(selectedLabels: selectedLabels),
            ),
          );
        },
        child: const Icon(Icons.arrow_forward, color: Colors.black),
      ),
    );
  }
}

class SelectButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onTap;

  const SelectButton({
    super.key,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.grey,
      ),
      onPressed: onTap,
      child: Text(label),
    );
  }
}
