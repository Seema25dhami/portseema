import 'package:flutter/material.dart';
import 'package:portseema/myStyle.dart';
import 'package:url_launcher/url_launcher.dart';

//you can write it anywhere outside the class
Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 170),
      width: double.infinity,
      height: 750,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0)),
      ),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(
              'assets/seema.jpg',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Seema",
            style: heading4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 16.0,
                color: Colors.black,
              ),
              Text(
                "Haryana",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("2", style: countText),
                  Text("Projects", style: projText),
                ],
              ),
              SizedBox(
                width: 24.0,
              ),
              Column(
                children: [
                  Text("2", style: countText),
                  Text("Awards", style: projText),
                ],
              ),
              SizedBox(
                width: 24.0,
              ),
              Column(
                children: [
                  Text("1", style: countText),
                  Text("Internships", style: projText),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email_outlined),
              SizedBox(
                width: 15,
              ),
              Text(
                'seemadhamiwal2001@gmail.com',
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'projects_page');
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue[100],
              ),
              child: Row(
                children: const [
                  Icon(Icons.file_copy),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Projects',
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              final Uri _url = Uri.parse(
                  'https://www.linkedin.com/in/seema-dhamiwal-56a214213/');
              _launchUrl(_url);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue[100],
              ),
              child: Row(
                children: const [
                  Icon(Icons.connect_without_contact),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Connect with me on LinkedIn!',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
