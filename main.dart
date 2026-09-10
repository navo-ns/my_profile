import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: MyProfile()),
  );
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F5F7),

      // -------------------------
      // APP BAR
      // -------------------------
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 2,
      ),

      // -------------------------
      // BODY
      // -------------------------
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // -------------------------
            // PROFILE IMAGE
            // -------------------------
            Center(
              child: Stack(
                children: [
                  // White circular background
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),

                    child: ClipOval(
                      child: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Green check mark
                  Positioned(
                    right: 5,
                    bottom: 10,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // -------------------------
            // DIVIDER
            // -------------------------
            const Divider(color: Colors.black, thickness: 1),

            const SizedBox(height: 5),

            // -------------------------
            // NAME
            // -------------------------
            const Text(
              "Name",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Diluka",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),

            const SizedBox(height: 25),

            // -------------------------
            // EMAIL
            // -------------------------
            const Text(
              "Email",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 7),

            Row(
              children: const [
                Icon(Icons.email, color: Colors.black, size: 16),

                SizedBox(width: 8),

                Text(
                  "diluka.w@nsbm.ac.lk",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // -------------------------
            // POINTS
            // -------------------------
            const Text(
              "Points",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 7),

            Row(
              children: const [
                Icon(Icons.star, color: Colors.black, size: 18),

                SizedBox(width: 8),

                Text("0", style: TextStyle(fontSize: 14, color: Colors.black)),
              ],
            ),
          ],
        ),
      ),

      // -------------------------
      // FLOATING ACTION BUTTON
      // -------------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
        },

        backgroundColor: Colors.black,

        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
