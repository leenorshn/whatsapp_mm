import 'package:flutter/material.dart';
import 'package:whatsapp_clone/contact_model.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, required this.contact}) : super(key: key);

  final ContactModel contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${contact.nom} profile"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage(contact.imageUrl),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              contact.nom,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
