import 'package:flutter/material.dart';
import 'constants.dart';

//! Small Button Widget
class SmallButton extends StatelessWidget {
  final Color color;
  final String text;
  final Color kolor;
  final VoidCallback onTap;

  const SmallButton({
    this.color,
    this.text,
    this.kolor,
    this.onTap,
  });

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

//! Small Icon Button Widget
class SmallIconButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Color kolor;
  final VoidCallback onTap;

  const SmallIconButton({
    this.color,
    this.icon,
    this.kolor,
    this.onTap,
  });

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
        child: Icon(
          icon,
          color: kolor,
        ),
        color: color,
      ),
    );
  }
}

//! Textfield Widget
// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  final IconData prefiks;
  final TextInputType keyboard;
  final String label;
  final String hint;
  bool secret;
  final TextEditingController controller;
  @override
  MyTextField({
    this.prefiks,
    this.keyboard,
    this.label,
    this.hint,
    this.secret = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 50,
        left: 50,
      ),
      child: TextField(
        controller: controller,
        obscureText: secret,
        enableInteractiveSelection: false,
        cursorColor: kWhiteColor,
        keyboardType: keyboard,
        style: TextStyle(
          color: kWhiteColor,
        ),
        autocorrect: false,
        textCapitalization: TextCapitalization.none,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: label,
          hintText: hint,
          prefixIcon: Icon(
            prefiks,
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}

//! Second Textfield Widget
// ignore: must_be_immutable
class MyTextField2 extends StatelessWidget {
  final TextInputType keyboard;
  final String label;
  final String hint;
  bool secret;
  final TextEditingController controller;
  @override
  MyTextField2({
    this.keyboard,
    this.label,
    this.hint,
    this.secret = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: secret,
      enableInteractiveSelection: false,
      cursorColor: kWhiteColor,
      keyboardType: keyboard,
      style: TextStyle(
        color: kWhiteColor,
      ),
      autocorrect: false,
      textCapitalization: TextCapitalization.none,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: label,
        hintText: hint,
      ),
    );
  }
}

//! Big Button Widget
class BigButton extends StatelessWidget {
  final Color color;
  final String text;
  final Color kolor;
  final VoidCallback onTap;

  const BigButton({
    this.color,
    this.text,
    this.kolor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 290,
      height: 60,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(
            letterSpacing: 2,
            color: kolor,
          ),
        ),
        color: color,
      ),
    );
  }
}

//! Underline Button Widget
class UnderlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const UnderlineButton({
    this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onTap,
      child: Container(
        padding: EdgeInsets.only(
          bottom: 1, // space between underline and text
        ),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: Colors.white, // Text colour here
          width: 1, // Underline width
        ))),
        child: Text(
          text,
          style: TextStyle(
            letterSpacing: 2,
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}

//! Text Widget
class MyText extends StatelessWidget {
  final String text;
  final double size;
  

  const MyText({
    this.text,
    this.size, 
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        letterSpacing: 2,
        fontSize: size,
        color: kWhiteColor,
      ),
    );
  }
}

//! Avatar
class CircleAvatarWidget extends StatelessWidget {
  final double radius;
  final VoidCallback tap;
  final NetworkImage image;

  const CircleAvatarWidget({
    this.radius,
    this.tap,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: CircleAvatar(
        maxRadius: radius,
        backgroundImage: image,
      ),
    );
  }
}

//! Tab Icon Widget
class TabIcon extends StatelessWidget {
  final IconData icon;

  const TabIcon({
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Icon(
        icon,
        color: kWhiteColor,
      ),
    );
  }
}
