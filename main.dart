import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile App'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: 'Personal Info'),
              Tab(icon: Icon(Icons.school), text: 'Education'),
              Tab(icon: Icon(Icons.build), text: 'Skills'),
              Tab(icon: Icon(Icons.interests), text: 'Interests'),
              Tab(icon: Icon(Icons.contact_mail), text: 'Contact'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PersonalInfoTab(),
            EducationTab(),
            SkillsTab(),
            InterestsTab(),
            ContactTab(),
          ],
        ),
      ),
    );
  }
}

class PersonalInfoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage:
                AssetImage('assets/profile.png'), // Replace with your image URL
          ),
          SizedBox(height: 20),
          Text(
            'Mark Kent E. Bantugon',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Age: 20',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'Hello, Everyone! Mabuhay! My name is Mark Kent E. Bantugon, and I am currently a student at Batangas State University - TNEU, where I am pursuing a degree in Bachelor of Science in Information Technology Major in Business Analytics.',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class EducationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        ListTile(
          leading: Icon(Icons.school),
          title: Text('Bachelor of Science in Information Technology'),
          subtitle: Text('Batangas State University -TNEU 2024 - Present'),
        ),
        ListTile(
          leading: Icon(Icons.school),
          title: Text('Senior High School'),
          subtitle: Text(
              'Anselmo A. Sandoval Memorial National High School, 2020-2021'),
        ),
        ListTile(
          leading: Icon(Icons.school),
          title: Text('Junior High Schoool'),
          subtitle: Text(
              'Anselmo A. Sandoval Memorial National High School, 2018-2019'),
        ),
        ListTile(
          leading: Icon(Icons.school),
          title: Text('Elementary'),
          subtitle: Text('Laurel Elementary School, 2014-2015'),
        ),
      ],
    );
  }
}

class SkillsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        ListTile(
          leading: Icon(Icons.build_circle), 
          title: Text('Technical Skills'),
          subtitle: Text('Photography, Editing'),
        ),
        ListTile(
          leading: Icon(Icons.build_circle), 
          title: Text('Non-Technical Skills'),
          subtitle: Text('Problem Solving, Creative'),
        ),
        ListTile(
          leading: Icon(Icons.build_circle), 
          title: Text('Certifications'),
          subtitle: Text(
              'National Certificate II in Computer Servicing'),
        ),
      ],
    );
  }
}

class InterestsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        ListTile(
          leading: Icon(Icons.interests),
          title: Text('Specialization'),
          subtitle: Text('Information Technology Major in Business Analytics'),
        ),
        ListTile(
          leading: Icon(Icons.interests),
          title: Text('Personal Interests'),
          subtitle: Text('Art & Photography'),
        ),
        ListTile(
          leading: Icon(Icons.interests),
          title: Text('Outdoor & Indoor Activities'),
          subtitle:
              Text('Badminton & Workout'),
        ),
        ListTile(
          leading: Icon(Icons.interests),
          title: Text('Travels & Adventures'),
          subtitle: Text(
              'Roadtrips, Out of the Country'),
        ),
      ],
    );
  }
}

class ContactTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        ListTile(
          leading: Icon(Icons.email),
          title: Text('Email'),
          subtitle: Text('21-05936@g.batstate-u.edu.ph'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone'),
          subtitle: Text('+1234567890'),
        ),
        ListTile(
          leading: Icon(Icons.link),
          title: Text('Social Media'),
          subtitle: Text('Github.com/kentbantugon@gmail.com'),
        ),
      ],
    );
  }
}