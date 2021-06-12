import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFC4C4C4)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Container(
          padding: EdgeInsets.only(left: 70.0),
          child: Text(
            'About Us',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(28.0),
                width: 450,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it",
                ),
              ),
              Center(
                child: Text(
                  'The Team',
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TeamCard(
                      TeammateImage: Image.asset('images/avatar.png'),
                      TeammateName: 'Jon Snow',
                      TeammateRole: 'Backend Developer',
                    ),
                    TeamCard(
                      TeammateImage: Image.asset('images/avatar.png'),
                      TeammateName: 'Jon Snow',
                      TeammateRole: 'UI/UX Developer',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TeamCard(
                      TeammateImage: Image.asset('images/avatar.png'),
                      TeammateName: 'Jon Snow',
                      TeammateRole: 'Backend Developer',
                    ),
                    TeamCard(
                      TeammateImage: Image.asset('images/avatar.png'),
                      TeammateName: 'Darshan',
                      TeammateRole: 'Kuch Kaam ka Nahi',
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  'Our Goal',
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.all(28.0),
                width: 450,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeamCard extends StatelessWidget {
  final TeammateImage;
  final TeammateName;
  final TeammateRole;
  const TeamCard({
    Key? key,
    required this.TeammateImage,
    required this.TeammateName,
    required this.TeammateRole,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Expanded(
        child: Container(
          height: 200.0,
          width: 160.0,
          decoration: BoxDecoration(
              color: Color(0xFF282B3A),
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              CircleAvatar(
                radius: 40.0,
                child: ClipOval(child: TeammateImage),
              ),
              Text(
                TeammateName,
                style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFFFF7500),
                    fontWeight: FontWeight.w900),
              ),
              Text(TeammateRole),
            ],
          ),
        ),
      ),
    );
  }
}
