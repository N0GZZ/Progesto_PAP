import 'package:flutter/material.dart';
import 'package:progesto/pages/auth/login.dart';
import 'package:progesto/pages/auth/register.dart';
import 'package:progesto/pages/splashPage.dart';
import 'package:progesto/pages/auth/redefinirPassword.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://dluwygnqtytvmcsbhxvp.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRsdXd5Z25xdHl0dm1jc2JoeHZwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMyNjQ3MzcsImV4cCI6MjAyODg0MDczN30.aqxOf0EdoPv53cmnvs05nmRqfeDb0szl8jJ--Kst4Zk',
  );  

  runApp(MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'user',
      home: Login(),
      routes: {
          '/splashPage': (context) => splash(),
          '/registo':(context) => Register(),
          '/login':(context) => Login(),
          '/redefinirPassword':(context) => RedefinirPassword(),
      },
    );
  }
}
