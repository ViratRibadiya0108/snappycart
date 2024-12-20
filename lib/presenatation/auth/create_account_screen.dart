import 'package:flutter/material.dart';
import 'package:snappycart/core/service/app_data/app_color.dart';
import 'package:snappycart/core/service/app_data/app_image.dart';
import 'package:snappycart/core/service/auth_services/firebase_auth.dart';
import 'package:snappycart/presenatation/auth/login_account_screen.dart';
import 'package:snappycart/presenatation/home_screen/home_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
    TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> createAccount() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      // Successfully created user
    } catch (e) {
      // Handle errors
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        child: LayoutBuilder(builder: (context, constraints) {
          bool isWeb = constraints.maxWidth > 600;

          return isWeb
              ? Stack(
                  children: [
                    Positioned.fill(
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), // Adjust opacity here
                          BlendMode
                              .darken, // You can also experiment with other blend modes
                        ),
                        child: Image.network(
                          AppImage.loginScreenimage,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Center(
                        child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20), // Rounded corners
                      ),
                      elevation: 8, // Add shadow for better visual hierarchy
                      color: AppColors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 40,
                            right: 40,
                            top: 20,
                            bottom: 20), // Padding inside the card
                        child: SizedBox(
                          height: screenHeight * 0.65,
                          width: screenWidth * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Title
                              Center(
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),

                              // Name Field
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Enter Name',
                                  labelStyle: TextStyle(
                                      color: AppColors.white), // Darker label
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors
                                            .ofWhite), // Grey underline
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            AppColors.white), // Blue on focus
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),

                              // Email Field
                              TextFormField(
                                 controller: email,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(color: AppColors.white),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: AppColors.ofWhite),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: AppColors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),

                              // Password Field
                              TextFormField(
                                controller: password,
                                obscureText: true, // Hide the text for password
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: AppColors.white),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: AppColors.ofWhite),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: AppColors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),

                              // Confirm Password Field
                              TextFormField(
                                obscureText: true, // Hide the text for password
                                decoration: InputDecoration(
                                  labelText: 'Confirm Password',
                                  labelStyle: TextStyle(color: AppColors.white),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: AppColors.ofWhite),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: AppColors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),

                              // Submit Button
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomeScreen(),), (route)=>false);
                                    // Add your submit logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        AppColors.white, // Button color
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 50,
                                        vertical: 15), // Padding inside button
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          30), // Round button shape
                                    ),
                                  ),
                                  child: Text(
                                    'Register',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Already have account? ',
                                        style:
                                            TextStyle(color: AppColors.white),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const LoginAccountScreen(),
                                                ));
                                          },
                                          child: Text(' Log In',
                                              style: TextStyle(
                                                  color: AppColors.white,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  decorationColor:
                                                      AppColors.white))),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))
                  ],
                )
              : Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        color: Colors.white, // Set the background color here
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Create \nyour account',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            obscureText: true, // Hide the text for password
                            decoration: InputDecoration(
                              labelText: 'Enter your name',
                              labelStyle: TextStyle(color: AppColors.black),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.fullBlack),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColors.black),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            controller: email,
                            // Hide the text for password
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(color: AppColors.black),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.fullBlack),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColors.black),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            controller: password,
                            obscureText: true, // Hide the text for password
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: AppColors.black),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.fullBlack),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColors.black),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            obscureText: true, // Hide the text for password
                            decoration: InputDecoration(
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(color: AppColors.black),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.fullBlack),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColors.black),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: createAccount,
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    AppColors.fullBlack, // Button color
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50,
                                    vertical: 15), // Padding inside button
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30), // Round button shape
                                ),
                              ),
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.05,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Already have account?',
                                    style: TextStyle(color: AppColors.black),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginAccountScreen(),
                                            ));
                                      },
                                      child: Text('Log In',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor:
                                                  AppColors.black))),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                );
        }),
      ),
    );
  }
}
