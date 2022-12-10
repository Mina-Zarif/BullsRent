import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/UI/LoginScreen/LoginScreen.dart';
import 'package:flutter_task/shared/cubit/cubit.dart';
import 'package:flutter_task/shared/cubit/state.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: Colors.white,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            ),
            elevation: 0,
          ),
          body: Container(
            padding: EdgeInsetsDirectional.only(start: 15),
            color: Colors.white,
            child: ListView(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/images/maxresdefault_icon.jpeg"),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "WELCOME,",
                  style: GoogleFonts.prociono(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    height: 1.5,
                    wordSpacing: 5,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 30, start: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SignUp to start your Journey',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        cursorHeight: 25,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          // focusColor: Colors.black,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelText: "Full Name",
                          labelStyle: TextStyle(
                            color: Colors.grey[600],
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        cursorHeight: 25,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          // focusColor: Colors.black,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelText: "Username",
                          labelStyle: TextStyle(
                            color: Colors.grey[600],
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        cursorHeight: 25,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          // focusColor: Colors.black,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Colors.grey[600],
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        cursorHeight: 25,
                        keyboardType: TextInputType.phone,
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          // focusColor: Colors.black,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelText: "Phone NO",
                          labelStyle: TextStyle(
                            color: Colors.grey[600],
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        cursorColor: Colors.grey,
                        cursorHeight: 25,
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              cubit.isShown
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Colors.grey[600],
                            ),
                            onPressed: () {
                              cubit.obscurePassword();
                            },
                          ),
                          // focusColor: Colors.black,
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Colors.grey[600],
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        obscureText: !cubit.isShown,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        child: Container(
                          color: Colors.black,
                          height: 45,
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              "GO",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "ALREADY HAVE AN ACCOUNT? LOGIN",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
