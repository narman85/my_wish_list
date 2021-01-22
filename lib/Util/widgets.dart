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
  @override
  MyTextField({
    this.prefiks,
    this.keyboard,
    this.label,
    this.hint,
    this.secret = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 50,
        left: 50,
      ),
      child: TextField(
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
  @override
  MyTextField2({
    this.keyboard,
    this.label,
    this.hint,
    this.secret = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
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
