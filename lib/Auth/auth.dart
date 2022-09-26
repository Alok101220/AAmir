// function to implement the google signin

// creating firebase instance

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter__catalog/pages/home_page.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
Future<void> signup(BuildContext context) async {
  final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  if (googleSignInAccount != null) {
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;
    final AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    // Getting users credential
    UserCredential result = await auth.signInWithCredential(authCredential);
    User? user = result.user;

    if (result != null) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => (HomePage())));
    } // if result not null we simply call the MaterialpageRoute,
    // for go to the HomePage screen
  }
}

// Future logout() async {
//   await googleSignIn.disconnect();
//   FirebaseAuth.instance.signOut();
//   Navigator.pushReplacement(
//       context, MaterialPageRoute(builder: (context) => (SignInScreen())));
// }
