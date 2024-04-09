import 'package:bank/config/image/image.dart';
import 'package:flutter/material.dart';

import '../../config/consts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              'Bienvenue sur eBank',
              style: TextStyle(
                fontSize: 22,
                fontFamily: bold,
                color: primaryColor,
              ),
            ),
            Text(
              'Votre argent en sécurité',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Image.asset(
                    imgWallet,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              '------ CONNEXION ------',
              style: TextStyle(
                fontSize: 20,
                fontFamily: bold,
                color: primaryColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Email',
                    ),
                  ),
                ],
              ),
            ))
          ],
        )),
      ),
    );
  }
}
