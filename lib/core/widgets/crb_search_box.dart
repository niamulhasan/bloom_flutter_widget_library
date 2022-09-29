import 'package:flutter/material.dart';

class CrbSearchBox extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const CrbSearchBox({
    Key? key,
    this.hintText = "Search Anything",
    this.icon = Icons.search,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration().copyWith(
        suffixIcon: InkWell(
          onTap: () {
            print("Search button pressed");
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              // backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              child: Icon(
                icon,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ),
        filled: true,
        fillColor: Theme.of(context).colorScheme.background,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: BorderSide.none),
        contentPadding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        hintText: hintText,
      ),
    );
  }
}
