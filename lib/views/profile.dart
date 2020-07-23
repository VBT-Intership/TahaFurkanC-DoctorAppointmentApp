import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      home: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          bottom: 15, left: 10, right: 10, top: 15),
                      decoration: BoxDecoration(
                          color: Colors.orange[50],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Column(
                        children: <Widget>[
                          buildTopBar(),
                          buildAvatar(),
                          buildText("Flutter", 18, FontWeight.bold),
                          buildText("Freamwork", 18, FontWeight.bold),
                          buildCardRow(),
                        ],
                      ),
                    ),
                    buildText("About", 24, FontWeight.bold),
                    buildText(
                        "Flutter is an app SDK for building high-performance, high-fidelity apps for iOS, Android, web (beta), and desktop (technical preview) from a single codebase.",
                        16,
                        FontWeight.w300),
                    buildText("Working Time", 24, FontWeight.bold),
                    buildText("EveryTime", 16, FontWeight.w300),
                    buildText("Communication", 24, FontWeight.bold),
                    buildListTile(
                        title: "Messaging",
                        subtitle: "Chat me up, Share photos",
                        titlesize: 20,
                        subtitlesize: 14,
                        leadingbgcolor: Colors.pink[50],
                        leadingcolor: Colors.pink,
                        icon: Icons.chat),
                    buildListTile(
                        title: "Audio Call",
                        subtitle: "Call your freamwork directly",
                        titlesize: 20,
                        subtitlesize: 14,
                        leadingbgcolor: Colors.blue[50],
                        leadingcolor: Colors.blue,
                        icon: Icons.call),
                    buildListTile(
                        title: "Video Call",
                        subtitle: "See your doctor live.",
                        titlesize: 20,
                        subtitlesize: 14,
                        leadingbgcolor: Colors.orange[50],
                        leadingcolor: Colors.orange,
                        icon: Icons.videocam),
                  ],
                ),
              ],
            ),
            buildbottombtn()
          ],
        ),
      ),
    ));
  }

  Padding buildbottombtn() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        height: 60,
        child: FlatButton(
          onPressed: () {},
          color: Colors.tealAccent[700],
          child: Text(
            "Book Appaaaointment",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w300, fontSize: 16),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(
      {String title,
      String subtitle,
      double titlesize,
      double subtitlesize,
      Color leadingcolor,
      Color leadingbgcolor,
      IconData icon}) {
    return ListTile(
      title: buildText(title, titlesize, FontWeight.w600),
      subtitle: buildText(subtitle, subtitlesize, FontWeight.w500),
      leading: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: leadingbgcolor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Icon(
          icon,
          color: leadingcolor,
        ),
      ),
    );
  }

  Row buildCardRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        buildCard(Icons.people_outline, "1 M+", "Users", Colors.blueAccent),
        buildCard(Icons.outlined_flag, "1000+", "App", Colors.pink[100]),
        buildCard(Icons.star_border, "5.0", "Ratings", Colors.orange[100]),
      ],
    );
  }

  Padding buildText(String text, double size, FontWeight weight) {
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Text(
        text,
        style: TextStyle(fontWeight: weight, fontSize: size),
      ),
    );
  }

  Center buildAvatar() {
    return Center(
        child: CircleAvatar(
      radius: 100,
      backgroundColor: Colors.white,
      child: FlutterLogo(
        size: 100,
      ),
    ));
  }

  Padding buildTopBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(5.0),
            decoration: myBoxDecoration(),
            child: Icon(
              Icons.keyboard_backspace,
              size: 30,
            ),
          ),
          Icon(
            Icons.more_vert,
            size: 30,
          )
        ],
      ),
    );
  }

  Widget buildCard(
      IconData icon, String toptext, String bottomtext, Color color) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
              child: Icon(icon),
              padding:
                  EdgeInsets.only(top: 30, bottom: 16, left: 12, right: 12),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 1),
              child: Text(
                toptext,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              bottomtext,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
        border: Border.all(width: 1.5, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(Radius.circular(5.0)));
  }
}
