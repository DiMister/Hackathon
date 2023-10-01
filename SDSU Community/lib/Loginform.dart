

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hansagourmet/feed_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isemail = false;
  bool ispass = false;
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(130, 0, 0, 0),
        child: ListView(
          children: const [
            ListTile(
              title: Text('About SDSU'),
            ),
            ListTile(
              title: Text('About SDSU'),
            ),
            ListTile(
              title: Text('About SDSU'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: SvgPicture.asset(
              'assets/images/South_Dakota_State_University_logo.svg'),
        ),
        title: const Text('Student Community'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 300,
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    maxLength: 30,
                    decoration: const InputDecoration(
                        labelText: 'Enter email',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white70)),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !value.contains('@')) {
                        return 'please enter a valid value containing @';
                      }
                        if(value != 'test@gmail.com'){
                        return 'Unauthenticated user';
                      }
                      isemail = true;
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: 'enter password',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white70)),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !value.contains('@') ||
                          value.length < 10) {
                        return 'please enter a valid value containing a special correcter and minimum 10';
                      }
                      if(value != 'test@gmail.com'){
                        return 'Unauthenticated user';
                      }
                      ispass = true;
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue[900])),
                      onPressed: () { 
                        if(_formKey.currentState!.validate()){
                           ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')));
                        }
                        if(isemail && ispass){
                          setState(() {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=> const FeedPage()));
                          });
                        }
                       },
                      icon: const Icon(Icons.login),
                      label: const Text('Enter the world of jacks!!'))
                ],
              )),
        ),
      ),
    );
  }
}
