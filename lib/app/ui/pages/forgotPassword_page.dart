import 'package:aking/app/ui/pages/resetPassword_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotpasswordPage extends StatefulWidget {
  const ForgotpasswordPage({super.key});

  @override
  State<ForgotpasswordPage> createState() => _ForgotpasswordPageState();
}

class _ForgotpasswordPageState extends State<ForgotpasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot Password",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Please enter your email below to recevie \nyour password reset instruction",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff9B9B9B)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Username",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              TextField(
                cursorColor: Colors.black,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff9B9B9B)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff9B9B9B)),
                    ),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff9B9B9B))),
                    hintText: "Enter your username",
                    hintStyle: TextStyle(
                        color: Color(0xff9B9B9B),
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                  child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CupertinoButton(
                    color: Color(0xffF96060),
                    child: Text("Send Request"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResetpasswordPage()));
                    }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
