import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/contact_model.dart';
import 'package:whatsapp_clone/profile.dart';
import 'package:whatsapp_clone/single_message.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  String nom = "Aimer";
  List<ContactModel> contacts = [
    ContactModel(imageUrl: "images/pp.jpeg", nom: "Aimer", phone: "0975693283"),
    ContactModel(imageUrl: "images/profile.jpeg", nom: "Victor"),
    ContactModel(imageUrl: "images/animal.jpg", nom: "Ornella"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.chat_bubble))
        ],
      ),
      body: ListView.builder(
          itemCount: contacts.length,
          padding:
              const EdgeInsets.only(top: 16, bottom: 72, left: 8, right: 8),
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(contacts[index].imageUrl),
                  // child: Image.network("https://github.com/leenorshn.png"),
                ),
                title: Text(contacts[index].nom),
                subtitle: Text(contacts[index].phone ?? "0978154329"),
                trailing: const Icon(CupertinoIcons.phone),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Profile(
                            contact: contacts[index],
                          )));
                },
              ),
            );
          }),
      // body: Center(
      //   child: Text(
      //     "$nom  ----",
      //     style: const TextStyle(
      //       fontSize: 24,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.orange,
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SingleMessage()));
        },
        child: const Icon(CupertinoIcons.chat_bubble),
      ),
    );
  }
}
