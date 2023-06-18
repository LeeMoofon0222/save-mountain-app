//import 'dart:developer';

//import 'package:flutter/foundation.dart';
//import 'dart:js_util';

//import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'My App',
      initialRoute: '/', //加route
      routes: {
        '/': (context) => const MyHomePage(),
        '/YM': (context) => const MMPage(),
        '/HH': (context) => const HHPage(),
        '/SM': (context) => const SMPage()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首頁:旅遊資訊"),
        backgroundColor: Colors.green[900],
      ),
      drawer: const MyDrawer(),
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Text.rich(
        TextSpan(
          style: const TextStyle(fontSize: 30.0, color: Colors.white,fontWeight: FontWeight.w800),
          children: [
            TextSpan(
                text: "1.           陽明山國家公園",
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    Uri googleUrl = Uri.parse('https://www.ymsnp.gov.tw/main_ch/index.aspx');
                    if (await canLaunchUrl(googleUrl)) {
                      await launchUrl(googleUrl);
                    } else {
                    }//canLaunch is from url_launcher package
                  }
            ),
            TextSpan(
                text: "                  2.",
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                  }
            ),
            TextSpan(
                text: "           太魯閣國家公園",
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    Uri googleUrl = Uri.parse('https://www.ymsnp.gov.tw/main_ch/index.aspx');
                    if (await canLaunchUrl(googleUrl)) {
                      await launchUrl(googleUrl);
                    } else {
                    }//canLaunch is from url_launcher package
                  }
            ),
            TextSpan(
                text: "                  3.",
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                  }
            ),
            TextSpan(
                text: "           雪霸國家公園",
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    Uri googleUrl = Uri.parse('https://www.ymsnp.gov.tw/main_ch/index.aspx');
                    if (await canLaunchUrl(googleUrl)) {
                      await launchUrl(googleUrl);
                    } else {
                    }//canLaunch is from url_launcher package
                  }
            ),
            TextSpan(
                text: "                  4.",
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                  }
            ),
            TextSpan(
                text: "           玉山國家公園",
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    Uri googleUrl = Uri.parse('https://www.ymsnp.gov.tw/main_ch/index.aspx');
                    if (await canLaunchUrl(googleUrl)) {
                      await launchUrl(googleUrl);
                    } else {
                    }//canLaunch is from url_launcher package
                  }
            ),
          ]
        /*
        children: <Widget>[
          TextButton(
            child: const Text('            陽明山國家公園',
                style: TextStyle(fontSize: 30.0, color: Colors.white,fontWeight: FontWeight.w800)),
            onPressed: () {

            },
          ),
          TextButton(
            child: const Text('            太魯閣國家公園',
                style: TextStyle(fontSize: 30.0, color: Colors.white,fontWeight: FontWeight.w800)),
            onPressed: () {
            },
          ),
          TextButton(
            child: const Text('            雪霸國家公園',
                style: TextStyle(fontSize: 30.0, color: Colors.white,fontWeight: FontWeight.w800)),
            onPressed: () {
            },
          ),
          TextButton(
            child: const Text('            玉山國家公園',
                style: TextStyle(fontSize: 30.0, color: Colors.white,fontWeight: FontWeight.w800)),
            onPressed: () {
            },
          ),
        ],*/
      ),
    ),
    ],
    ),
    );
  }
}

class MMPage extends StatelessWidget {
  const MMPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('陽明山步道'),
        backgroundColor: Colors.green[900],
    ),
    drawer: const MyDrawer(),
    body: Center(
      child: Stack(
        children: [
          Image.asset('assets/images/mountain.jpg'),
          const Positioned(
            bottom: 545,
            right: 255,
            child: Text(
                "步道人數:312人",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 85,
            child: IconButton(
              icon: Icon(Icons.delete,color: Colors.yellow[800]),
              onPressed: () {
                showAlertDialog(context,"73");
              },
            ),
          ),
          Positioned(
            bottom: 398,
            right: 60,
            child: IconButton(
              icon: Icon(Icons.delete,color: Colors.red[600]),
              onPressed: () {
                // ignore: avoid_print
                showAlertDialog(context,"94");
              },
            ),
          ),
          Positioned(
            bottom: 140,
            right: 200,
            child: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                // ignore: avoid_print
                showAlertDialog(context,"12");
              },
            ),
          ),
          Positioned(
            bottom: 435,
            right: 215,
            child: IconButton(
              icon: Icon(Icons.delete,color: Colors.yellow[800]),
              onPressed: () {
                // ignore: avoid_print
                showAlertDialog(context,"66");
              },
            ),
          ),
          Positioned(
            bottom: 35,
            right: 65,
            child: IconButton(
              icon: const Icon(Icons.wc,color: Colors.pinkAccent,size: 30),
              onPressed: () {
              },
            ),
          ),
          Positioned(
            bottom: 190,
            right: 200,
            child: IconButton(
              icon: const Icon(Icons.wc,color: Colors.pinkAccent,size: 30),
              onPressed: () {
              },
            ),
          ),
          Positioned(
            bottom: 395,
            right: 40,
            child: IconButton(
              icon: const Icon(Icons.wc,color: Colors.pinkAccent,size: 30),
              onPressed: () {
              },
            ),
          ),
        ],
      ),
    ),
    );
  }
}

class HHPage extends StatelessWidget {
  const HHPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('合歡山步道'),
        backgroundColor: Colors.green[900],
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Stack(
          children: [
            Image.asset('assets/images/HHmountain.jpg'),
            const Positioned(
              bottom: 0,
              right: 20,
              child: Text(
                "步道人數:36人",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black
                ),
              ),
            ),
            Positioned(
              bottom: 180,
              right: 292,
              child: IconButton(
                icon: Icon(Icons.delete,color: Colors.yellow[800]),
                onPressed: () {
                  showAlertDialog(context,"56");
                },
              ),
            ),
            Positioned(
              bottom: 325,
              right: 310,
              child: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  // ignore: avoid_print
                  showAlertDialog(context,"9");
                },
              ),
            ),
            Positioned(
              bottom: 180,
              right: 150,
              child: IconButton(
                icon: const Icon(Icons.wc,color: Colors.pinkAccent,size: 30),
                onPressed: () {
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SMPage extends StatelessWidget {
  const SMPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('雪山步道'),
        backgroundColor: Colors.green[900],
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Stack(
          children: [
            Image.asset('assets/images/SMmountain.jpg'),
            const Positioned(
              bottom: 0,
              right: 15,
              child: Text(
                "步道人數:79人",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black
                ),
              ),
            ),
            Positioned(
              bottom: 200,
              right: 36,
              child: IconButton(
                icon: Icon(Icons.delete,color: Colors.yellow[800]),
                onPressed: () {
                  showAlertDialog(context,"70");
                },
              ),
            ),
            Positioned(
              bottom: 280,
              right: 290,
              child: IconButton(
                icon: Icon(Icons.delete,color: Colors.red[600]),
                onPressed: () {
                  // ignore: avoid_print
                  showAlertDialog(context,"90");
                },
              ),
            ),
            Positioned(
              bottom: 145,
              right: 230,
              child: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  // ignore: avoid_print
                  showAlertDialog(context,"11");
                },
              ),
            ),
            Positioned(
              bottom: 210,
              right: 10,
              child: IconButton(
                icon: const Icon(Icons.wc,color: Colors.pinkAccent,size: 30),
                onPressed: () {
                },
              ),
            ),
            Positioned(
              bottom: 260,
              right: 320,
              child: IconButton(
                icon: const Icon(Icons.wc,color: Colors.pinkAccent,size: 30),
                onPressed: () {
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/landspace.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children:[
                Text('Menu',
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(
                    fontSize: 100,
                    leading: 0,
                    height: 1.1,
                    forceStrutHeight: true,
                  ),
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.white
                  ),
                ),
              ],
            ),
            ),
          ListTile(
            title: const Text('首頁',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, '/');
            },
          ),
          ListTile(
            title: const Text('陽明山步道',
              style: TextStyle(
              fontSize: 20.0,
              color: Colors.black
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, '/YM');
            },
          ),
          ListTile(
            title: const Text('合歡山步道',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, '/HH');
            },
          ),
          ListTile(
            title: const Text('雪山步道',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, '/SM');
            },
          ),
        ],
      ),
    );
  }
}

//Homepage List


showAlertDialog(BuildContext context,height) {
  // Init
  AlertDialog dialog = AlertDialog(
    title: Text("垃圾量 " + height + "%"),
    actions: [
      ElevatedButton(
          child: const Text("OK"),
          onPressed: () {
            Navigator.pop(context);
          }
      ),
    ],
  );

  // Show the dialog
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialog;
      }
  );
}