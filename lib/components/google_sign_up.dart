
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health/provider/sign_in_provider.dart';
import 'package:provider/provider.dart';


class GoogleSignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      child: OutlinedButton.icon(
          onPressed: (){
            final provider = Provider.of<GoogleSignInProvider> (context, listen: false);
            provider.login();
          },
          icon: FaIcon(FontAwesomeIcons.google, color: Colors.red,),
          label: Text('Sign In with Google', style: TextStyle(fontSize: 20, color: Colors.black),),
    )
    );
  }
}