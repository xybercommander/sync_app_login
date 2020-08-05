import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sync_app_login/widgets/loginWidgets.dart';

class SignIn extends StatefulWidget {  
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final formKey = GlobalKey<FormState>();  
    
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height);
    return Scaffold(      
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(              
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: ScreenUtil().setHeight(50),),
                Container(            
                  width: ScreenUtil().setWidth(170),
                  height: ScreenUtil().setHeight(207),
                  child: Image.asset("assets/images/Logo@3x.png"),
                ),
                SizedBox(height: ScreenUtil().setHeight(45),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        // Email address
                        textFieldLoginInput("Email Address"),
                        SizedBox(height: 10,),
                        // Password
                        textFieldLoginInput("Password"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: ScreenUtil().setHeight(10),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Builder(
                    builder: (context) => GestureDetector(
                      onTap: () {
                        print("Logged in");
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text("Logging in"),
                        ));
                      },
                      child: Container(
                          alignment: Alignment.center,
                          width: ScreenUtil().setWidth(296),
                          height: ScreenUtil().setHeight(52),                      
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Hexcolor("#EF5A53"), Hexcolor("#F48348"), Hexcolor("#F48348")]
                            ),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Text("Login", style: TextStyle(fontSize: ScreenUtil().setSp(16), color: Colors.white, fontFamily: "Quicksand-Medium"),),
                        ),
                    ),                    
                  ),
                ),
                SizedBox(height: ScreenUtil().setHeight(10),),
                Center(child: Text("Forgot Password?", style: TextStyle(fontFamily: "Quicksand-Medium"),),),
                SizedBox(height: ScreenUtil().setHeight(50),),
                Center(child: Text("Create a new account", style: TextStyle(fontSize: ScreenUtil().setSp(16), fontFamily: "Quicksand-Bold"),),),
              ],
            ),
          ),
        ),
      )
    );
  }
}