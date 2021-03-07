import 'package:flutter/material.dart';
/*
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
*/
// local files

import 'package:char_diwari_ecommerce_app/home.dart';
/*
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GoogleSignIn googleSignIn = new GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SharedPreferences preferences;
  bool loading = false;
  bool isLoggedin = false;

  @override
  void initState() {
    super.initState();
    isSignedIn();
  }

  void isSignedIn() async {
    setState(() {
      loading = true;
    });
    preferences = await SharedPreferences.getInstance();
    isLoggedin = await googleSignIn.isSignedIn();
    if (isLoggedin) {
      // push replacement does not let him press back and return to it
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => DynamicHomePage()));
    }
    setState(() {
      loading = false;
    });
  }

  Future handleSignIn() async {
    preferences = await SharedPreferences.getInstance();

    setState(() {
      loading = true;
    });

    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
    await googleUser.authentication;
    FirebaseUser firebaseUser = await firebaseAuth.signInWithGoogle(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);
    if (firebaseUser != null) {
      final QuerySnapshot result = await Firestore.instance
          .collection("users")
          .where("id", isEqualTo: firebaseUser.uid)
          .getDocuments();
      final List<DocumentSnapshot> documents = result.documents;
      if (documents.length == 0) {
        // insert the user to our collection
        Firestore.instance
            .collection("users")
            .document(firebaseUser.uid)
            .setData({
          "id": firebaseUser.uid,
          "username": firebaseUser.displayName,
          "profilePicture": firebaseUser.photoUrl
        });

        await preferences.setString("id", firebaseUser.uid);
        await preferences.setString("username", firebaseUser.displayName);
        await preferences.setString("photoUrl", firebaseUser.photoUrl);
      } else {
        await preferences.setString("id", documents[0]["id"]);
        await preferences.setString("username", documents[0]["username"]);
        await preferences.setString("photoUrl", documents[0]["photoUrl"]);
      }
      Fluttertoast.showToast(msg: "Logged In Successfully");
      setState(() {
        loading = false;
      });
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => DynamicHomePage()));
    } else {
      Fluttertoast.showToast(msg: "Login Failed");
    }
  }
  
*/class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: new AppBar(
          elevation: 0.2,
          backgroundColor: Colors.yellow,
          title: new Text(
            "Login",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )),
      */
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/login_back.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          /*
          Visibility(
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white.withOpacity(0.9),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.red),
                  ),
                ),
              ),
            )*/
        ],
      ),
      bottomNavigationBar: Container(
          child: new FlatButton(
              color: Colors.yellow,
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => DynamicHomePage()));
              },
              child: Text(
                "Sign In/ Sign Up with Google",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
    );
  }
}
