import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  // final String facebookUrl;
  // final String linkedinUrl;
  // final String googleUrl;
  // final String twitterUrl;

  // Footer({super.key});

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(17, 17, 17, 1),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 100,
            width: 200,
          ),
          Row(
            children: const [
              Text(
                "Have an Idea?We Can Help",
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Row(
            children: const <Widget>[
              Text(
                "Start your Project",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
              Icon(Icons.arrow_forward, size: 30, color: Colors.red)
            ],
          ),
          const SizedBox(
            height: 100,
            width: 200,
          ),
          Row(
            children: const [
              Text(
                "Follow us on:",
                style: TextStyle(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlutterSocialButton(
                onTap: () =>
                    _launchURL("https://www.facebook.com/ba.beingambitious/"),
                mini: true, //just pass true for mini circle buttons
                buttonType: ButtonType
                    .facebook, // Button type for different type buttons
              ),
              FlutterSocialButton(
                onTap: () => _launchURL(
                    "https://www.linkedin.com/company/beingambitious/?originalSubdomain=in"),
                mini: true, //just pass true for mini circle buttons
                buttonType: ButtonType
                    .linkedin, // Button type for different type buttons
              ),
              FlutterSocialButton(
                onTap: () => _launchURL("http://www.twitter.com"),
                mini: true, //just pass true for mini circle buttons
                buttonType: ButtonType
                    .twitter, // Button type for different type buttons
              ),
              FlutterSocialButton(
                onTap: () => _launchURL("https://beingambitious.co.in"),
                mini: true, //just pass true for mini circle buttons
                buttonType:
                    ButtonType.google, // Button type for different type buttons
              ),
            ],
          ),
          // Row(
          //   children: [
          //     Container(
          //       // height: 5,
          //       // width: 5,
          //       // child: InkWell(
          //       child: Image.asset("assets/images/tech_1.png"),
          //       //onTap: () {},
          //     ),
          //     //)
          //   ],
          // ),
          // SizedBox(
          //   height: 10,
          //   width: 20,
          // ),
          Container(
            width: double.infinity,
            child: Image.asset("assets/images/BACover.png"),
          ),
        ],
      ),
    );
  }
}
