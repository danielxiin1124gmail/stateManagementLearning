import 'package:flutter/material.dart';
import 'package:weatherflut/ui/ui_constants.dart';

class EmptyWidget extends StatelessWidget {
  final VoidCallback onTap;

  const EmptyWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/welcome.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: Center(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: maxPageWidth,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/logo.png',
                    height: 55,
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Text(
                    'Hola,\nWelcome',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'How about we add a new city?',
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    onPressed: onTap,
                    child: Text('add city'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
