
import 'package:firebase_core/firebase_core.dart';
import 'package:flashchatnew/screens/chat_screen.dart';
import 'package:flashchatnew/screens/login_screen.dart';
import 'package:flashchatnew/screens/registration_screen.dart';
import 'package:flashchatnew/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());

}
class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) =>RegistrationScreen(),
        ChatScreen.id: (context) =>ChatScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
