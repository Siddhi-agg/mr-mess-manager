import 'package:flutter/material.dart';

class authScreen extends StatefulWidget {
  const authScreen({super.key});

  @override
  State<authScreen> createState() => _authScreenState();
}

class _authScreenState extends State<authScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bgAuth.png'), fit: BoxFit.cover),
        ),
        child: Container(
         
          //  margin: EdgeInsets.all(18),
          alignment: Alignment.center,
          //height: double.maxFinite,
          child: Card(
            elevation: 100,
            color: Theme.of(context).cardColor.withOpacity(0.8),
            margin: EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 30),
            child: Padding(
              padding: const EdgeInsets.only(top: 9,bottom: 16,left: 12,right: 12),
              
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                TextFormField(
                 // initialValue: 'eg: 2021IMT-099',
                  decoration: InputDecoration(
                    labelText: 'Enrollment No.',
                    labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                    icon: Icon(Icons.app_registration),
                    hintText: 'eg: 2021IMT-099'
                  ),
                  
                ),
                TextFormField(
                 // initialValue: 'Atleast 8 characters long',
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                    icon: Icon(Icons.key),
                    hintText: 'Atleast 8 characters long',
                  ),
                  obscureText: true,
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
