import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _loginFromKey = GlobalKey<FormState>();
  final TextEditingController _usernameCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pond CarCare"),
        backgroundColor: Color.fromARGB(255, 127, 199, 171),
      ),
      body: Form(
        key: _loginFromKey,
        child: Column(
          children: [
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Pleas enter your Username";
                  }
                  return null;
                },
                controller: _usernameCtrl,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: "Username",
                    prefixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color.fromARGB(193, 153, 3, 3))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Color.fromARGB(176, 41, 60, 235)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Pleas enter your Password";
                  }
                  return null;
                },
                obscureText: true,
                controller: _passwordCtrl,
                decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock_outline),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color.fromARGB(193, 153, 3, 3))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Color.fromARGB(176, 41, 60, 235)))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (_loginFromKey.currentState!.validate()) {
                    print("ได้ละ");
                  }
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
