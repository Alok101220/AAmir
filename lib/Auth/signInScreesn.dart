//SignInScreen

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter__catalog/Auth/auth.dart';

class SignInScreen extends StatefulWidget {
// ignore: prefer_const_constructors_in_immutables
SignInScreen({Key? key}) : super(key: key);

@override
// ignore: library_private_types_in_public_api
_SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {


@override
Widget build(BuildContext context) {
	return Scaffold(
	body: Container(
		width: double.infinity,
		height: double.infinity,
		decoration: BoxDecoration(
		gradient: LinearGradient(
			// ignore: prefer_const_literals_to_create_immutables
			colors: [
			Colors.blue,
			Colors.red,
			],
		),
		),
		child: Card(
		margin: EdgeInsets.only(top: 200, bottom: 200, left: 30, right: 30),
		elevation: 20,
		child: Column(
			mainAxisAlignment: MainAxisAlignment.spaceEvenly,
			children: [
			Text(
				"GEEKS FOR GEEKS",
				style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
			),
			Padding(
				padding: const EdgeInsets.only(left: 20, right: 20),
				child: MaterialButton(
				color: Colors.teal[100],
				elevation: 10,
				child: Row(
					mainAxisAlignment: MainAxisAlignment.start,
					// ignore: prefer_const_literals_to_create_immutables
					children: [
					SizedBox(
						width: 20,
					),
					Text("Sign In with Google")
					],
				),
				
				// by onpressed we call the function signup function
				onPressed: ()=>
					signup(context)
				),
			)
			],
		),
		) ,
    ),
	);
}
}
