import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vp18_azkar_app/screens/about_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int _counter = 0;
String _content = 'استغفر الله ';

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context, '/info_screen',
                // arguments: 'massage',
                arguments: <String, dynamic>{
                  'massage': 'Welcome to info ',
                },
              );
            },
            icon: Icon(
              Icons.info,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutScreen(
                      massage: "About Screen",
                    ),
                  ));
            },
            icon: Icon(
              Icons.question_mark,
            ),
          ),
          PopupMenuButton<String>(
              offset: Offset(0, 45),
              onSelected: (String value) {
                if (value != _content) {
                  setState(() {
                    _content = value;
                    _counter = 0;
                  });
                }
              },
              onCanceled: () {},
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text("استغفر الله"),
                    value: "استغفر الله",
                    textStyle: GoogleFonts.arefRuqaa(
                      color: Colors.black,
                    ),
                  ),
                  PopupMenuItem(
                    child: Text(" سبحان الله"),
                    value: "سبحان الله",
                    textStyle: GoogleFonts.arefRuqaa(
                      color: Colors.black,
                    ),
                  ),
                  PopupMenuItem(
                    child: Text(" الحمد لله"),
                    value: "الحمد لله",
                    textStyle: GoogleFonts.arefRuqaa(
                      color: Colors.black,
                    ),
                  ),
                ];
              }),
        ],
        // automaticallyImplyLeading: false,

        centerTitle: true,
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.green.shade200,
            Colors.white,
          ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                " لنستغفر معاً",
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(
                bottom: 20,
              ),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias, // لقض حواف الابن
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              margin: EdgeInsetsDirectional.only(
                start: 30,
                end: 30,
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    _content,
                        style: GoogleFonts.arefRuqaa(
                          color: Colors.black,
                        ),
                    textAlign: TextAlign.center,
                  )),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.teal,
                    child: Center(
                      child: Text(
                        _counter.toString(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter++;
                          print(_counter);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                      ),
                      child: Text('تسبيح'),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter = 0;
                          print(_counter);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                      ),
                      child: Text('إعادة'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
