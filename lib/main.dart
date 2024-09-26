import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rhazel May B. Despi'),
          backgroundColor: Color.fromRGBO(0, 178, 0, 100),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color.fromARGB(255, 196, 255, 218),
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/images/despi.jpeg'),
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      'Rhazel May Despi',
                      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 0),

              // Information sections
              ProfileInfoRow(label: 'Address:                         ', data: 'San Isidro, Jaro, Iloilo'),
              ProfileInfoRow(label: 'Birthdate:                       ', data: 'May 09, 2004'),
              ProfileInfoRow(label: 'Email:                             ', data: 'rhazelmay.despi@wvsu.edu.ph'),
              ProfileInfoRow(label: 'Phone Number:             ', data: '09630400249'),
              ProfileInfoRow(label: 'Course:                           ', data: 'Bachelor of Science in Information Technology'),
              ProfileInfoRow(label: 'Year and Section:          ', data: '3-A'),

              SizedBox(height: 0),

              // Biography section
              Container(
                color: const Color.fromARGB(255, 196, 255, 218), // Background color
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Biography',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'A 3rd year Bachelor of Science in Information Technology student who was raised in San Isidro, Jaro, Iloilo. A girl who aspires to live and be happy. I dream of travelling the world despite being a homebody. I want to try new things, especially when it comes to food. I love arts, especially drawing. I want to get more into watercolor painting. I have a pet dog, a Belgian Malinois who has been with me since his birth. I love him very much. I also used to have a pet cat but lost her due to some personal reasons. If asked which one I prefer, I would say I love all animals. I actually dream of having a pet snake, a white rat snake to be exact.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileInfoRow extends StatelessWidget {
  final String label;
  final String data;

  const ProfileInfoRow({required this.label, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: const Color.fromARGB(255, 196, 255, 218), // Background color
          padding: EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(data),
            ],
          ),
        ),
        SizedBox(height: 0.5),
      ],
    );
  }
}
