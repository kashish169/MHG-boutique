import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mhg/features/auth/signin/controller/sign_in_controller.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../sign_up/controller/sign_up_controller.dart';

class BottomThirdAuth extends StatefulWidget {
  const BottomThirdAuth({super.key});

  @override
  State<BottomThirdAuth> createState() => _BottomThirdAuthState();
}

class _BottomThirdAuthState extends State<BottomThirdAuth> {
  final SignUpController controller = Get.find();
  final SignInController signInController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.only(bottom: 30)),
        Text(
          "Or Continue with",
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: const Color(0XFF666666)),
        ),
        const Padding(padding: EdgeInsets.only(bottom: 25)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardAuth(
                iconPath: AppAssets.facebook2,
                onPressed: () async {
                  LoginResult login = await FacebookAuth.instance.login();
                  final userData = await FacebookAuth.instance
                      .getUserData(fields: "name,email");
                  await controller.signUp(
                      accountType: 'facebook',
                      token: login.accessToken!.tokenString,
                      email: userData['email'],
                      name: userData['name']);
                }),
            const Padding(padding: EdgeInsets.only(right: 15)),
            CardAuth(
                iconPath: AppAssets.googleIcon,
                onPressed: () async {
                  await GoogleSignIn.instance.initialize();
                  await GoogleSignIn.instance.signOut();
                  final GoogleSignInAccount gUser =
                      await GoogleSignIn.instance.authenticate();
                  final GoogleSignInAuthentication gAuth =
                      await gUser.authentication;
                  final String? token = gAuth.idToken;
                  if (token == null) return;
                  await controller.signUp(
                      accountType: 'google',
                      token: token,
                      email: gUser.email,
                      name: gUser.displayName);
                }),
            const Padding(padding: EdgeInsets.only(right: 15)),
            CardAuth(
                iconPath: AppAssets.appleIcon,
                onPressed: () async {
                  final credential = await SignInWithApple.getAppleIDCredential(
                    scopes: [
                      AppleIDAuthorizationScopes.email,
                      AppleIDAuthorizationScopes.fullName,
                    ],
                  );
                  await controller.signUp(
                      accountType: 'apple',
                      token: credential.identityToken,
                      email: credential.email,
                      name: credential.givenName);
                }),
          ],
        )
      ],
    );
  }
}

class CardAuth extends StatelessWidget {
  const CardAuth({super.key, required this.iconPath, required this.onPressed});
  final String iconPath;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.grey.withOpacity(0.2), width: 2),
        ),
        child: Image.asset(iconPath, width: 25, height: 25),
      ),
    );
  }
}
