import 'package:flutter/material.dart';
import 'profile_detail.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String nim;
  final String photoUrl;

  const ProfilePage({
    Key? key,
    required this.name,
    required this.nim,
    required this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PROFILE'),
      ),
      body: Column(
        children: [
          SizedBox(height: 24),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://scontent.fjog3-1.fna.fbcdn.net/v/t39.30808-6/285490718_3259013681048866_7991706926180607282_n.jpg?stp=dst-jpg_s851x315&_nc_cat=110&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHLskKzC1C_NtkFm-HPjIRH07LTfUBWUK3TstN9QFZQrVtMk8aIVj3NSyB8EGaN2PI78hKyboG9f5RQe_J71zeh&_nc_ohc=etF9YI8tNAYAX91DSVc&_nc_ht=scontent.fjog3-1.fna&oh=00_AfDE17n8J9S3Bak2lJfNSuGPzX9gDCrTJNucWXHXfM30Mg&oe=64314D2C"),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              name,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Center(
            child: Text(
              nim,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 30.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(name: name, nim: nim, photoUrl: "https://scontent.fjog3-1.fna.fbcdn.net/v/t39.30808-6/285490718_3259013681048866_7991706926180607282_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHLskKzC1C_NtkFm-HPjIRH07LTfUBWUK3TstN9QFZQrVtMk8aIVj3NSyB8EGaN2PI78hKyboG9f5RQe_J71zeh&_nc_ohc=etF9YI8tNAYAX91DSVc&_nc_ht=scontent.fjog3-1.fna&oh=00_AfAIBZp0H5RvEvqrhwHCfJ0qKxcawsJ4D6lyXyx5TFnU6Q&oe=64314D2C",birthPlace: "Bogor", birthDate: "29 Agustus 2002", classYear: "IF-A", futureGoal: "Membahagiakan orang tua dan diri sendiri"),
                ),
              );
            },
            child: Text('Info Detail'),
          ),

        ],
      ),
    );
  }
}