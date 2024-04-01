import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/components/header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          SizedBox(
            height: 24,
            child: Stack(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: kDefaultPadding / 4),
                  child: Text(
                    "Recomended",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: const EdgeInsets.only(right: kDefaultPadding / 4),
                    height: 7,
                    color: kPrimaryColor.withOpacity(0.2),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
