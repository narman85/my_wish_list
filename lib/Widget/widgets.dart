import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmallButton extends StatelessWidget {
  final Color color;
  final String text;
  final Color kolor;
  final VoidCallback onTap;

  const SmallButton({
    Key key,
    this.color,
    this.text,
    this.kolor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 120,
      height: 50,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(letterSpacing: 2, color: kolor),
        ),
        color: color,
      ),
    );
  }
}

class SmallIconButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Color kolor;
  final VoidCallback onTap;

  const SmallIconButton({
    Key key,
    this.color,
    this.icon,
    this.kolor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 120,
      height: 50,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: onTap,
        child: FaIcon(
          icon,
          color: kolor,
        ),
        color: color,
      ),
    );
  }
}
