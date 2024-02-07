import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'How to use',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Center text horizontally
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                'How to use',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, wordSpacing: 5.0),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 12.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                child: Text(
                  '1. Turn on the IoT devices',
                  style: TextStyle(fontSize: 20, wordSpacing: 4.0, height: 2),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                child: Text(
                  '2. Make sure that the mobile phone is connected to the internet or WiFi',
                  style: TextStyle(fontSize: 20, wordSpacing: 4.0, height: 2),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                child: Text(
                  '3. Turn on the Bluetooth connection',
                  style: TextStyle(fontSize: 20, wordSpacing: 4.0, height: 2),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                child: Text(
                  '4. Open the Application',
                  style: TextStyle(fontSize: 20, wordSpacing: 4.0, height: 2),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                child: Text(
                  '5. Login/Register',
                  style: TextStyle(fontSize: 20, wordSpacing: 4.0, height: 2),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                child: Text(
                  '6. Then select blind mode, it will connect to the Bluetooth device',
                  style: TextStyle(fontSize: 20, wordSpacing: 2.5, height: 2),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(height: 20.0), // Add some space between text and image
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: InkWell(
              onTap: () {
                // Handle image button press
                print('Image Button Pressed');
              },
              child: Container(
                child: Image.asset(
                  "assets/imag/Sound.png", // Replace 'your_image.png' with the actual file name
                  height: 200.0, // Set the height of the image as needed
                ),
              ),
            ),
          )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle back button press
          Navigator.pop(context);
        },
        child: Text('Back',style: TextStyle(color: Colors.white,fontSize: 15),),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
