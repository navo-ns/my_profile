
import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
home: const MyProfile(),
);
}
}

class MyProfile extends StatelessWidget {
const MyProfile({super.key});

// Popup function
void showPopup(
BuildContext context,
String title,
String value,
IconData icon,
Color color,
) {
showDialog(
context: context,
builder: (context) {
return AlertDialog(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(18),
),
title: Row(
children: [
Icon(
icon,
color: color,
size: 28,
),
const SizedBox(width: 10),
Text(title),
],
),
content: Text(
value,
style: const TextStyle(
fontSize: 16,
),
),
actions: [
TextButton(
onPressed: () {
Navigator.pop(context);
},
child: const Text("Close"),
),
],
);
},
);
}

@override
Widget build(BuildContext context) {
return Scaffold(
body: Container(
decoration: const BoxDecoration(
gradient: LinearGradient(
begin: Alignment.topCenter,
end: Alignment.bottomCenter,
colors: [
Color(0xFFE8E0F7),
Color(0xFFF7F5FA),
Color(0xFFFFEEF4),
],
),
),
child: SafeArea(
child: Column(
children: [

// TOP BAR
Container(
height: 60,
width: double.infinity,
decoration: const BoxDecoration(
color: Colors.black,
borderRadius: BorderRadius.only(
bottomLeft: Radius.circular(18),
bottomRight: Radius.circular(18),
),
),
child: const Center(
child: Text(
"My Profile",
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontWeight: FontWeight.bold,
),
),
),
),

// PROFILE CONTENT
Expanded(
child: SingleChildScrollView(
padding: const EdgeInsets.all(20),
child: Column(
children: [

const SizedBox(height: 20),

// PROFILE IMAGE
Container(
width: 110,
height: 110,
padding: const EdgeInsets.all(4),
decoration: BoxDecoration(
shape: BoxShape.circle,
gradient: const LinearGradient(
colors: [
Color(0xFF7048B8),
Color(0xFFFF5D9E),
],
),
boxShadow: [
BoxShadow(
color: Colors.black.withOpacity(0.15),
blurRadius: 10,
offset: const Offset(0, 4),
),
],
),
child: ClipOval(
child: Image.network(
"https://i.pravatar.cc/300?img=12",
fit: BoxFit.cover,
),
),
),

const SizedBox(height: 20),

// NAME
const Text(
"Alex Johnson",
style: TextStyle(
fontSize: 23,
fontWeight: FontWeight.bold,
color: Color(0xFF25213B),
),
),

const SizedBox(height: 20),

const Divider(
color: Colors.black54,
),

const SizedBox(height: 15),

// NAME
profileItem(
icon: Icons.person,
iconColor: Colors.deepPurple,
title: "Name",
value: "Alex Johnson",
onTap: () {
showPopup(
context,
"Name",
"Alex Johnson",
Icons.person,
Colors.deepPurple,
);
},
),

const SizedBox(height: 12),

// EMAIL
profileItem(
icon: Icons.email,
iconColor: Colors.pink,
title: "Email",
value: "alex.johnson@gmail.com",
onTap: () {
showPopup(
context,
"Email",
"alex.johnson@gmail.com",
Icons.email,
Colors.pink,
);
},
),

const SizedBox(height: 12),

// TELEPHONE
profileItem(
icon: Icons.phone,
iconColor: Colors.green,
title: "Telephone",
value: "+94 77 123 4567",
onTap: () {
showPopup(
context,
"Telephone",
"+94 77 123 4567",
Icons.phone,
Colors.green,
);
},
),

const SizedBox(height: 12),

// AGE
profileItem(
icon: Icons.cake,
iconColor: Colors.orange,
title: "Age",
value: "25 Years",
onTap: () {
showPopup(
context,
"Age",
"25 Years",
Icons.cake,
Colors.orange,
);
},
),

const SizedBox(height: 12),

// JOB
profileItem(
icon: Icons.work,
iconColor: Colors.blue,
title: "Job",
value: "Software Developer",
onTap: () {
showPopup(
context,
"Job",
"Software Developer",
Icons.work,
Colors.blue,
);
},
),

const SizedBox(height: 12),

// COUNTRY
profileItem(
icon: Icons.public,
iconColor: Colors.teal,
title: "Country",
value: "Sri Lanka",
onTap: () {
showPopup(
context,
"Country",
"Sri Lanka",
Icons.public,
Colors.teal,
);
},
),

const SizedBox(height: 80),
],
),
),
),
],
),
),
),

// + BUTTON
floatingActionButton: FloatingActionButton(
backgroundColor: Colors.deepPurple,
onPressed: () {
showDialog(
context: context,
builder: (context) {
return AlertDialog(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(18),
),
title: const Row(
children: [
Icon(
Icons.add,
color: Colors.deepPurple,
),
SizedBox(width: 10),
Text("Add"),
],
),
content: const Text(
"You clicked the + icon.",
style: TextStyle(
fontSize: 16,
),
),
actions: [
TextButton(
onPressed: () {
Navigator.pop(context);
},
child: const Text("Close"),
),
],
);
},
);
},
child: const Icon(
Icons.add,
color: Colors.white,
size: 30,
),
),
);
}
}


// PROFILE ITEM WIDGET
Widget profileItem({
required IconData icon,
required Color iconColor,
required String title,
required String value,
required VoidCallback onTap,
}) {
return Container(
width: double.infinity,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(16),
boxShadow: [
BoxShadow(
color: Colors.black.withOpacity(0.07),
blurRadius: 7,
offset: const Offset(0, 3),
),
],
),
child: Row(
children: [

// ICON
GestureDetector(
onTap: onTap,
child: Container(
width: 55,
height: 65,
decoration: BoxDecoration(
color: iconColor.withOpacity(0.12),
borderRadius: const BorderRadius.only(
topLeft: Radius.circular(16),
bottomLeft: Radius.circular(16),
),
),
child: Icon(
icon,
color: iconColor,
size: 25,
),
),
),

const SizedBox(width: 15),

// TEXT
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [

Text(
title,
style: const TextStyle(
fontSize: 12,
color: Colors.grey,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 4),

Text(
value,
style: const TextStyle(
fontSize: 15,
color: Color(0xFF25213B),
fontWeight: FontWeight.w600,
),
),
],
),
),
],
),
);
}

