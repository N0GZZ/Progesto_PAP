
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class RedefinirPassword extends StatefulWidget {
  const RedefinirPassword({super.key});

  @override
  State<RedefinirPassword> createState() => _RedefinirPasswordState();
}

class _RedefinirPasswordState extends State<RedefinirPassword> {
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  'Redefinir Password',   
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFFEEEEEE),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextField(
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
                      labelText: 'Nova Password',
                      labelStyle: TextStyle(
                        color: Color(0xFFEEEEEE),
                      ),
                      contentPadding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),                      
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    style: TextStyle(
                      color: Color(0xFFEEEEEE),
                    ),
                    controller: _confirmpassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Color(0xFF31363F),
                      filled: true,
                      labelText: 'Confirmar Nova Password',
                      labelStyle: TextStyle(
                        color: Color(0xFFEEEEEE),
                      ),
                      contentPadding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),                      
                    ),
                  ),
                ),
              ),

              // Padding(
              //   padding: EdgeInsets.only(top: 5, right: 40),r
              //   child: Align(
              //     alignment: Alignment.centerRight,
              //     child: MouseRegion(
              //       cursor: SystemMouseCursors.click,
              //       child: GestureDetector(
              //         onTap: () {Navigator.pushNamed(context, '/redefinirPassword');},
              //         child: Text(
              //           'Esqueceu a sua password?',   
              //           style: TextStyle(
              //             fontSize: 15,
              //             fontWeight: FontWeight.w100,
              //             decoration: TextDecoration.underline,
              //             decorationColor: Color(0xFF76ABAE),
              //             color: Color(0xFF76ABAE),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

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
                  },
                  child: Text(
                    'Guardar alterações', 
                    style: TextStyle(
                      color: Color(0xFFEEEEEE),
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    )
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Deseja cancelar?',
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
                        onEnter: (PointerEvent event) => setState(() => isHovering = true),
                        onExit: (PointerEvent event) => setState(() => isHovering = false),
                        child: GestureDetector(
                          onTap: () {Navigator.pushNamed(context, '/login');},
                          child: Text(
                            'Volte ao início!',   
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
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}