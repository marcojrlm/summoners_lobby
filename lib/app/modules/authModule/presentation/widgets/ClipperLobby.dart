import 'package:flutter/material.dart';
import 'package:lol_stats/app/modules/authModule/presentation/widgets/signIn.dart';
import 'package:lol_stats/resources/appColors.dart';

class ClipperLobby extends StatelessWidget {

  final Widget? widget;

  const ClipperLobby({super.key, this.widget});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        color: AppColors.neutral50,
        height: MediaQuery.of(context).size.height * .9,
        width: MediaQuery.of(context).size.width * .8,
        child: widget,
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height - 50);

    path.lineTo(size.width * 0.15, size.height * 0.9);
    path.lineTo(size.width * 0.5, size.height);
    path.lineTo(size.width * 0.85, size.height * 0.9);
    path.lineTo(size.width, size.height - 50);

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
