import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            widget.title,
            style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.normal,
                color: Color(0xff0ACFA0)),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
            itemCount: 8,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                child: Container(
                  color: Color(0xff1E1C1C),
                  child: ListTile(
                    title: Text(
                      "Task 1",
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    subtitle: Text(
                        "Task 1 requires you to do cleaningaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 15,
                            color: Colors.grey)),
                    trailing: SizedBox(
                      width: 50,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.update,
                                size: 30,
                                color: Color(0xff0ACFA0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.delete,
                                size: 30,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff0ACFA0),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
