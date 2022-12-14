import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      //extendBodyBehindAppBar: true,
      body: Container(
        padding: const EdgeInsets.only(top: 70),
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.lightBlue[900]),
        child: Column(
          children: [
            Column(
              children: [
                const Text('Account',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 30),
                Center(
                  child: Stack(
                    //alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "lib/images/profilephoto.jpeg",
                            width: 128,
                            height: 128,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.orange),
                          child: const Icon(Icons.edit),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Column(
                  children: [
                    const Text(
                      'Okechi John',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'okechijohn@gmail.com',
                      style: TextStyle(color: Colors.grey[50]),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 24),
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                child: ProfileWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
