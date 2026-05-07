import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TaskFiveScreen(),
    );
  }
}

class TaskFiveScreen extends StatelessWidget {
  const TaskFiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
  
      appBar: AppBar(
        title: const Text('Flutter UI Task', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF007BFF),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            //  Circular Profile Image
            Center(
  child: CircleAvatar(
    radius: 55,
    backgroundColor: Colors.blueGrey.shade100,
    
    backgroundImage: const        NetworkImage('https://images.pexels.com/photos/1462630/pexels-photo-     1462630.jpeg?auto=compress&cs=tinysrgb&w=400'
    ),
  ),
),  
            const Text(
              'Welcome to Flutter',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            
            const Icon(Icons.star, color: Color(0xFFFFD700), size: 50),
            const SizedBox(height: 20),
            
           
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Email", style: TextStyle(color: Colors.grey)),
                    const SizedBox(height: 5),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text("Password", style: TextStyle(color: Colors.grey)),
                    const SizedBox(height: 5),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: "••••",
                      ),
                    ),
                    const SizedBox(height: 20),
                   
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0069D9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                        child: const Text('Submit', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
     
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF007BFF),
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white, size: 30),
      ),
    );
  }
}
