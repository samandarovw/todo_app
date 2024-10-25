import 'package:aking/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SuccessfullychangedWidget extends StatefulWidget {
  const SuccessfullychangedWidget({super.key});

  @override
  State<SuccessfullychangedWidget> createState() =>
      _SuccessfullychangedWidgetState();
}

class _SuccessfullychangedWidgetState extends State<SuccessfullychangedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.imagesSuccessfulChange),
              SizedBox(
                height: 30,
              ),
              Text(
                "Successful!",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You have succesfully change password. \nPlease use your new passwords when logging \nin.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                  child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CupertinoButton(
                    color: Color(0xffF96060),
                    child: Text("Let's go"),
                    onPressed: () {}),
              )),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
