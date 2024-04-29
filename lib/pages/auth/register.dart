// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:progesto/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';



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
        backgroundColor: Color.fromARGB(255, 56, 55, 55),
        body: Padding(        
          padding: EdgeInsets.only(top: 50, left: 550.0, right: 550, bottom: 5),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF252525),
              borderRadius: BorderRadius.circular(60),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF252525).withOpacity(0.5),
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
                      color: Color(0xFFAF0404),
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
                        fillColor: Color(0xFF414141),
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
                        fillColor: Color(0xFF414141),
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
                        fillColor: Color(0xFF414141),
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
                        fillColor: Color(0xFF414141),
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
      
                
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 40, right: 40),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFF0000),
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
                          Future<void> sendEmail() async {
                            final Email email = Email(
                              body: 'Email body content',
                              subject: 'Email Subject',
                              recipients: [_email.text],
                              cc: ['jpedrooliveira06@gmail.com'],
                              bcc: [],
                              attachmentPaths: [],
                              isHTML: false,
                            );

                            try {
                              await FlutterEmailSender.send(email);
                            } catch (error) {
                              print('Error sending email: $error');
                            }
                          }
                          
                          await supabase.from('user').insert({
                            'username' : _username.text,
                            'email' : _email.text,
                            'password_hash' : md5.convert(utf8.encode(_password.text)).toString()
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
                                decorationColor: Color(0xFFAF0404),
                                color: Color(0xFFAF0404),
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
