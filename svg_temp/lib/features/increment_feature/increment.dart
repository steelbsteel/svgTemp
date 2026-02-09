import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IncrementPage extends StatefulWidget {
  const IncrementPage({super.key});

  @override
  State<IncrementPage> createState() => _IncrementPageState();
}

class _IncrementPageState extends State<IncrementPage> {
  Color _color1 = Colors.grey;
  Color _color2 = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.translate(
                      offset: Offset(-35, 0),
                      child: GestureDetector(
                        onTap: () => {
                          setState(() {
                            _color1 = _color1 == Colors.grey
                                ? Color.fromARGB(255, 63, 38, 38)
                                : Colors.grey;
                          }),
                        },
                        child: SvgPicture.asset(
                          'assets/svg/LogoFirstPart.svg',
                          colorFilter: ColorFilter.mode(
                            _color1,
                            BlendMode.srcIn,
                          ),
                          height: 150,
                          width: 60,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(35, 0),
                      child: GestureDetector(
                        onTap: () => {
                          setState(() {
                            _color2 = _color2 == Colors.grey
                                ? Color.fromARGB(255, 63, 38, 38)
                                : Colors.grey;
                          }),
                        },
                        child: SvgPicture.asset(
                          'assets/svg/LogoSecondPart.svg',
                          colorFilter: ColorFilter.mode(
                            _color2,
                            BlendMode.srcIn,
                          ),
                          height: 150,
                          width: 60,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            Container(
            padding: EdgeInsets.fromLTRB(40,0,40,70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Кнопка 1
                ElevatedButton(
                  onPressed: () {
                    // Действие для первой кнопки
                    print('Кнопка 1 нажата');
                  },
                  child: Text(
                    'Действие 1',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(140, 50),
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                // Кнопка 2
                ElevatedButton(
                  onPressed: () {
                    // Действие для второй кнопки
                    print('Кнопка 2 нажата');
                  },
                  child: Text(
                    'Действие 2',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(140, 50),
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
