import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class SignIn extends StatefulWidget {  
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final formKey = GlobalKey<FormState>();  
    
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(              
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 85,),
                  Container(            
                    width: 170,
                    height: 207,
                    child: Image.asset("assets/Logo.png"),
                  ),
                  SizedBox(height: 45,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          // Email address
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            width: 296,
                            height: 52,                      
                            decoration: BoxDecoration(                        
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(30)
                            ),                  
                            child: TextFormField(
                              validator: (email) {
                                    return RegExp(
                                     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"
                                   ).hasMatch(email) ?
                                     null :
                                     "Please provide a valid email id";
                                  },
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.black),
                                border: InputBorder.none
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          // Password
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            width: 296,
                            height: 52,                      
                            decoration: BoxDecoration(
                              // color: Colors.redAccent,
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(30)
                            ),                  
                            child: TextFormField(
                              validator: (password){
                                return password.length > 6 ?
                                  null : 
                                  "Please provide a password which has more than 6 characters";
                              },
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.black),
                                border: InputBorder.none
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                        alignment: Alignment.center,
                        width: 296,
                        height: 52,                     
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Hexcolor("#EF5A53"), Hexcolor("#F48348"), Hexcolor("#F48348")]
                          ),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Text("Sign In", style: TextStyle(color: Colors.white),),
                      ),
                  ),
                  SizedBox(height: 10,),
                  Center(child: Text("Forgot Password?"),),
                  SizedBox(height: 50,),
                  Center(child: Text("Create a new account"),),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}