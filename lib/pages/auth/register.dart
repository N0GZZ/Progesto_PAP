// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:progesto/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();
  bool isHovering = false;

  

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
                Image(image: AssetImage('logo.png'), width: 100, height: 100),
      
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
                  'Registar Conta',   
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
                          return 'Porfavor insira um username';
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
                      controller: _email,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Color(0xFF31363F),
                        filled: true,
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Color(0xFFEEEEEE),
                        ),
                        contentPadding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),                      
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Porfavor insira um email';
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
                          return 'Porfavor insira uma password';
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
                      controller: _confirmpassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Color(0xFF31363F),
                        filled: true,
                        labelText: 'Confirmar Password',
                        labelStyle: TextStyle(
                          color: Color(0xFFEEEEEE),
                        ),
                        contentPadding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),                      
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Porfavor confirme a password';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
      
                // Padding(
                //   padding: EdgeInsets.only(top: 5, right: 40),
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
                  padding: EdgeInsets.only(top: 20, left: 40, right: 40),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF76ABAE),
                      minimumSize: Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final responseusername = await supabase.from('user').select('username').eq('username', _username.text).maybeSingle();
                        final responseemail = await supabase.from('user').select('email').eq('email', _email.text).maybeSingle();

                        if(_password.text != _confirmpassword.text){
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('As passwords não coincidem!')),
                          );
                        }else if(responseusername != null){
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Este username já existe!')),
                          );
                        }else if(responseemail != null){
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Este email já está em uso!')),
                          );
                        }else{
                          await supabase.from('user').insert({
                            'username' : _username.text,
                            'email' : _email.text,
                            'password_hash' : _password.text
                          });

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Conta criada com sucesso!')),
                          );
                        }

                          // Navigate the user to the Home page
                      } else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Porfavor preencha todos os campos!')),
                        );
                      }

                      //Navigator.pushNamed(context, '/homePage'); --> Chamar Página
                    },
                    child: Text(
                      'Registar', 
                      style: TextStyle(
                        color: Color(0xFFEEEEEE),
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                      )
                    ),
                  ),
                ),
      
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Já tem uma conta?',
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
                              'Inicie sessão!',   
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
      ),
    );
  }
}