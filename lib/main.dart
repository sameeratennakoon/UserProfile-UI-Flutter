import 'package:flutter/material.dart';

void main() => runApp(DarkThemeApp());

class LightThemeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(fontFamily: 'LexendDeca'),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.black),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: Image.asset(
                "assets/images/heart.png",
                width: 20,
                height: 20,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                    radius: 48,
                    backgroundImage: AssetImage("assets/images/boy.png")),
                PrimaryTextWidget("Bada Bheem"),
                SecondaryTextWidget("Product Designer"),
                TeritoryTextWidget("Create great interfaces @IncComp"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocialMediaProfile("assets/images/twitter_icon.png"),
                    SocialMediaProfile('assets/images/fb_icon.png'),
                    SocialMediaProfile('assets/images/linkedin.png')
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                    child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: Colors.blue,
                      child: Text(
                        "Hire Me",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ))
              ],
            ),
            Divider(
              indent: 40,
              endIndent: 40,
              color: Color.fromRGBO(105, 105, 105, 1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FollowerWidget(
                    "assets/images/basketball_icon.png", "1.3k", "Followers"),
                FollowerWidget(
                    "assets/images/behance_icon.png", "1.2k", "Followers")
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SocialMediaProfile extends StatelessWidget {
  final String icon;

  ///@required will force users to pass value, else, compilation error
  SocialMediaProfile(this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
        child: FlatButton(
            onPressed: () {},
            child: Image.asset(
              icon,
              width: 34,
              height: 34,
            )));
  }
}

class DarkThemeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.white),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          actions: <Widget>[
            IconButton(
              icon: Image.asset(
                "assets/images/heart_white.png",
                width: 20,
                height: 20,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                    radius: 48,
                    backgroundImage: AssetImage("assets/images/boy.png")),
                PrimaryTextWidgetDark("Bada Bheem"),
                SecondaryTextWidget("Product Designer"),
                TeritoryTextWidgetDark("Create great interfaces @IncComp"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocialMediaProfile("assets/images/twitter_icon.png"),
                    SocialMediaProfile('assets/images/fb_icon.png'),
                    SocialMediaProfile('assets/images/linkedin.png')
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                    child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: Colors.blue,
                      child: Text(
                        "Hire Me",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ))
              ],
            ),
            Divider(
              indent: 40,
              endIndent: 40,
              color: Color.fromRGBO(105, 105, 105, 1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FollowerWidgetDark(
                    "assets/images/basketball_icon.png", "1.3k", "Followers"),
                FollowerWidgetDark(
                    "assets/images/behance_icon.png", "1.2k", "Followers")
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FollowerWidget extends StatelessWidget {
  final String imagePath;
  final String followersCount;
  final String followersStaticText;

  ///@required will force users to pass value, else, compilation error
  FollowerWidget(this.imagePath, this.followersCount, this.followersStaticText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        CircleAvatar(radius: 32, backgroundImage: AssetImage(imagePath)),
        PrimaryTextWidget(followersCount),
        SecondaryTextWidget(followersStaticText),
      ],
    );
  }
}

class FollowerWidgetDark extends StatelessWidget {
  final String imagePath;
  final String followersCount;
  final String followersStaticText;

  ///@required will force users to pass value, else, compilation error
  FollowerWidgetDark(
      this.imagePath, this.followersCount, this.followersStaticText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        CircleAvatar(radius: 32, backgroundImage: AssetImage(imagePath)),
        PrimaryTextWidgetDark(followersCount),
        SecondaryTextWidget(followersStaticText),
      ],
    );
  }
}

class PrimaryTextWidget extends StatelessWidget {
  final String text;

  ///@required will force users to pass value, else, compilation error
  PrimaryTextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
        ));
  }
}

class SecondaryTextWidget extends StatelessWidget {
  final String text;

  ///@required will force users to pass value, else, compilation error
  SecondaryTextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey),
        ));
  }
}

class TeritoryTextWidget extends StatelessWidget {
  final String text;

  ///@required will force users to pass value, else, compilation error
  TeritoryTextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 2, 16, 2),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.normal, color: Colors.black),
        ));
  }
}

class PrimaryTextWidgetDark extends StatelessWidget {
  final String text;

  ///@required will force users to pass value, else, compilation error
  PrimaryTextWidgetDark(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }
}

class TeritoryTextWidgetDark extends StatelessWidget {
  final String text;

  ///@required will force users to pass value, else, compilation error
  TeritoryTextWidgetDark(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 2, 16, 2),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.normal, color: Colors.white),
        ));
  }
}
