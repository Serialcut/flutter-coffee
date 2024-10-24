import 'package:coffee_app/common/app_routes.dart';
import 'package:coffee_app/screens/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: size.height * 0.68,
              width: size.width,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/welcome.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Un café si bon, \nque vos papilles\n vont l'adorer.",
                    style: GoogleFonts.sora(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: size.height * 0.010,
                  ),
                  Text(
                    "Le meilleur grain, la plus fine torréfaction, \n la saveur puissante.",
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFA9A9A9),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: size.height * 0.030,
                  ),
                  SizedBox(
                    height: 62,
                    width: size.width * 0.80,
                    child: CustomButton(
                      title: "Commencer",
                      onPressed: () => Navigator.pushNamed(
                        context,
                        Routes.home,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.030,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
