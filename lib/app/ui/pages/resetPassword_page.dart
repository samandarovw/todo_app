import 'package:aking/app/ui/widgets/successfullyChanged_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetpasswordPage extends StatefulWidget {
  const ResetpasswordPage({super.key});

  @override
  State<ResetpasswordPage> createState() => _ResetpasswordPageState();
}

class _ResetpasswordPageState extends State<ResetpasswordPage> {
  // Initially password is obscure
  bool _obscureText = true;

  late String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

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
                "Reset Password",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Reset code was sent to your email. Please \nenter the code and creae new password",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff9B9B9B)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Reset code",
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
                    hintText: "Enter your code",
                    hintStyle: TextStyle(
                        color: Color(0xff9B9B9B),
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "New password",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              TextFormField(
                cursorColor: Colors.black,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  suffix: IconButton(
                      onPressed: _toggle,
                      icon: Icon(
                        _obscureText
                            ? CupertinoIcons.eye
                            : CupertinoIcons.eye_slash,
                        size: 20,
                      )),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff9B9B9B)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff9B9B9B)),
                  ),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff9B9B9B))),
                  hintText: "Enter your password",
                  hintStyle: TextStyle(
                      color: Color(0xff9B9B9B),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                validator: (val) =>
                    val!.length < 6 ? 'Password too short.' : null,
                onSaved: (val) => _password = val!,
                obscureText: _obscureText,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Confirm password",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              TextFormField(
                cursorColor: Colors.black,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  suffix: IconButton(
                      onPressed: _toggle,
                      icon: Icon(
                        _obscureText
                            ? CupertinoIcons.eye
                            : CupertinoIcons.eye_slash,
                        size: 20,
                      )),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff9B9B9B)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff9B9B9B)),
                  ),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff9B9B9B))),
                  hintText: "Enter your confirm password",
                  hintStyle: TextStyle(
                      color: Color(0xff9B9B9B),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                validator: (val) =>
                    val!.length < 6 ? 'Password too short.' : null,
                onSaved: (val) => _password = val!,
                obscureText: _obscureText,
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                  child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CupertinoButton(
                    color: Color(0xffF96060),
                    child: Text("Change password"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SuccessfullychangedWidget()));
                    }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
