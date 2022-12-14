import 'dart:math';

import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children:  [
        ListTile(
          leading: const Icon(Icons.person),
          title: Text("Personal Information", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey.shade800)),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
        ),
        ListTile(
          leading: const Icon(Icons.notifications),
          title: Text("Notification", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey.shade800)),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
        ),
        ListTile(
          leading: const Icon(Icons.money),
          title: Text("Payment", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey.shade800)),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: Text("Settings", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey.shade800)),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
        ),
        const Divider(),
        const ListTile(
          leading: Icon(Icons.logout_outlined, color: Colors.orange),
          title: Text("Log Out", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}
