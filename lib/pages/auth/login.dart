// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool isHovering = false;
  bool isHovering1 = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: Color(0xFFEEEEEE),
        body: Padding(
          padding: EdgeInsets.only(top: 50, left: 550.0, right: 550, bottom: 50),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF222831),
              borderRadius: BorderRadius.circular(60),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF222831).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ]
            ),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 40),
                Image(image: AssetImage('logo.png'), width: 150, height: 150),
      
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'PROGESTO',   
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                      color: Color(0xFF76ABAE),
                    ),
                  ),
                ),
      
                Text(
                  'Login',   
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFFEEEEEE),
                  ),
                ),
      
                Padding(
                  padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextFormField(
                      style: TextStyle(
                        color: Color(0xFFEEEEEE),
                      ),
                      controller: _username,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Color(0xFF31363F),
                        filled: true,
                        labelText: 'Username',
                        labelStyle: TextStyle(
                          color: Color(0xFFEEEEEE),
                        ),
                        contentPadding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),                      
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Porfavor insira o seu username';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
      
                Padding(
                  padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextFormField(
                      style: TextStyle(
                        color: Color(0xFFEEEEEE),
                      ),
                      controller: _password,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Color(0xFF31363F),
                        filled: true,
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Color(0xFFEEEEEE),
                        ),
                        contentPadding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),                      
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Porfavor insira a sua password';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
      
                Padding(
                  padding: EdgeInsets.only(top: 5, right: 40),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (PointerEvent event) => setState(() => isHovering = true),
                      onExit: (PointerEvent event) => setState(() => isHovering = false),
                      child: GestureDetector(
                        onTap: () {Navigator.pushNamed(context, '/redefinirPassword');},
                        child: Text(
                          'Esqueceu a sua password?',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                            decoration: isHovering ? TextDecoration.underline : TextDecoration.none,
                            decorationColor: Color(0xFF76ABAE),
                            color: Color(0xFF76ABAE),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
      
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 40, right: 40),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF76ABAE),
                      minimumSize: Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () {
                      //Navigator.pushNamed(context, '/homePage'); --> Chamar Página
                      if (_formKey.currentState!.validate()) {
                          // Navigate the user to the Home page
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Please fill input')),
                          );
                        }
                    },
                    child: Text(
                      'Login', 
                      style: TextStyle(
                        color: Color(0xFFEEEEEE),
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                      )
                    ),
                  ),
                ),
      
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Não tem uma conta?',
                          style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w100,
                                color: Color(0xFFEEEEEE),
                              ),
                          ),
                      ),
                      Center(
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          onEnter: (PointerEvent event) => setState(() => isHovering1 = true),
                          onExit: (PointerEvent event) => setState(() => isHovering1 = false),
                          child: GestureDetector(
                            onTap: () {Navigator.pushNamed(context, '/registo');},
                            child: Text(
                              'Registe-se!',   
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w100,
                                decoration: isHovering1 ? TextDecoration.underline : TextDecoration.none,
                                decorationColor: Color(0xFF76ABAE),
                                color: Color(0xFF76ABAE),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}