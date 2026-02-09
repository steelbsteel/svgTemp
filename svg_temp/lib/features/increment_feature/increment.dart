import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IncrementPage extends StatefulWidget {
  const IncrementPage({super.key});

  @override
  State<IncrementPage> createState() => _IncrementPageState();
}

class _IncrementPageState extends State<IncrementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => {},
                  child: SvgPicture.asset(
                    'assets/svg/LogoFirstPart.svg',
                    colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
                    height: 200,
                    width: 100,),
                ),
                GestureDetector(
                  onTap: () => {},
                  child: SvgPicture.asset(
                    'assets/svg/LogoSecondPart.svg',
                    colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
                    height: 200,
                    width: 100,),
                ),
              ],
            ),
            Text("Amirhan", 
            style: TextStyle(fontSize: 20))
          ],
        )
      )
    );
  }
}