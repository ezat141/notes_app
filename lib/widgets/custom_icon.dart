import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key});

  //final void Function()? onPressed;
  //final IconData icon;

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
         
        onPressed: () {  },
        icon: const Icon(
          Icons.search,
          size: 28,
        ),
        
      ),
    );
  }
}