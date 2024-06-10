import 'package:flutter/material.dart';
import 'package:rumah_sakit/user/signin.dart';
import 'package:rumah_sakit/user/signup.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 236, 236, 237),
              Color.fromARGB(255, 120, 184, 241),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png', // Ubah path sesuai dengan lokasi logo Anda
                width: 300,
                height: 300,
                fit: BoxFit.contain,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  shadowColor: Colors.black54,
                  elevation: 10,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.login, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  shadowColor: Colors.black54,
                  elevation: 10,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.person_add, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
