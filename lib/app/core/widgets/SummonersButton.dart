import 'package:flutter/material.dart';
import 'package:lol_stats/resources/appColors.dart';

class SummonersButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final bool isLoading;

  const SummonersButton(
      {Key? key,
      required this.text,
      required this.onTap,
      required this.isLoading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          color: AppColors.blue50,
          height: 60,
          width: 250,
          child: Center(
            child: isLoading
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 25),
                  ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(size.width * .1, 0);

    path.lineTo(0, size.height * .70);

    path.lineTo(size.width * .1, size.height * .76);
    path.lineTo(size.width * .15, size.height * .79);
    path.lineTo(size.width * .2, size.height * .82);
    path.lineTo(size.width * .25, size.height * .85);
    path.lineTo(size.width * .3, size.height * .88);
    path.lineTo(size.width * .35, size.height * .91);
    path.lineTo(size.width * .4, size.height * .94);
    path.lineTo(size.width * .45, size.height * .97);

    path.lineTo(size.width * .5, size.height);
    path.lineTo(size.width * .55, size.height);

    path.lineTo(size.width * .6, size.height * .97);
    path.lineTo(size.width * .65, size.height * .94);
    path.lineTo(size.width * .7, size.height * .91);
    path.lineTo(size.width * .75, size.height * .88);
    path.lineTo(size.width * .8, size.height * .85);
    path.lineTo(size.width * .85, size.height * .82);
    path.lineTo(size.width * .9, size.height * .79);
    path.lineTo(size.width * .95, size.height * .76);

    path.lineTo(size.width, size.height * .70);

    path.lineTo(size.width * .9, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
