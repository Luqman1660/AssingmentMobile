import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const ContactPage(title: 'A & L CAFE'));
}

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key, required String title}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final nameUser = TextEditingController();
  final subjectUser = TextEditingController();
  final emailUser = TextEditingController();
  final messageUser = TextEditingController();

  Future<void> sendEmail() async {
    final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
    const serviceId = "service_0n7vmsc";
    const templateId = "template_848kd5n";
    const userId = "gx-8OxajfbZvLzTuX";

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        "service_id": serviceId,
        "template_id": templateId,
        "user_id": userId,
        "template_params": {
          "name": nameUser.text,
          "subject": subjectUser.text,
          "message": messageUser.text,
          "email": emailUser.text,
        }
      }),
    );

    if (response.statusCode == 200) {
      // Email sent successfully
      log('Email sent!');
    } else {
      // Error sending email
      log('Failed to send email. Error: ${response.body}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Contact Form"),
          backgroundColor: Colors.brown,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              TextFormField(
                controller: nameUser,
                decoration: const InputDecoration(
                  icon: Icon(Icons.account_circle),
                  hintText: 'Name',
                  labelText: 'Name',
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: subjectUser,
                decoration: const InputDecoration(
                  icon: Icon(Icons.account_circle),
                  hintText: 'Subject',
                  labelText: 'Subject',
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: emailUser,
                decoration: const InputDecoration(
                  icon: Icon(Icons.account_circle),
                  hintText: 'Email',
                  labelText: 'Email',
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: messageUser,
                decoration: const InputDecoration(
                  icon: Icon(Icons.account_circle),
                  hintText: 'Message',
                  labelText: 'Message',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: sendEmail,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.brown),
                ),
                child: Text(
                  "Send",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
