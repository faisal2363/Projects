import "package:flutter/material.dart";
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenView(
        navigateRoute: ColorPickerclass(),
        duration: 5000,
        imageSize: 130,
        imageSrc: "xylo.gif",
        text: "Xylophone App",

        textType: TextType.ColorizeAnimationText,
        textStyle: TextStyle(
          fontSize: 40.0,
        ),
        colors: [
          Colors.purple,
          Colors.blue,
          Colors.yellow,
          Colors.red,
        ],
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}



class ColorPickerclass extends StatefulWidget {
  @override
  State<ColorPickerclass> createState() => _ColorPickerclassState();
}

class _ColorPickerclassState extends State<ColorPickerclass> {
  Color n1 = Colors.red;
  Color n2 = Colors.blue;
  Color n3 = Colors.lime;
  Color n4 = Colors.brown;
  Color n5 = Colors.lightGreen;
  Color n6 = Colors.deepPurple;
  Color n7 = Colors.tealAccent;
  void changeColor1(Color color) {
    setState(() {
      n1=color;


    });
  }
  void changeColor2(Color color) {
    setState(() {
      n2=color;
    });
  }
  void changeColor3(Color color) {
    setState(() {
      n3=color;
    });
  }
  void changeColor4(Color color) {
    setState(() {
      n4=color;
    });
  }
  void changeColor5(Color color) {
    setState(() {
      n5=color;
    });
  }
  void changeColor6(Color color) {
    setState(() {
      n6=color;
    });
  }
  void changeColor7(Color color) {
    setState(() {
      n7=color;
    });
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black12,
          centerTitle: true,
          title: Text("Xylophone"),
          leading: Icon(
              Icons.home
          )

      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(

                height: 20,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: n1,
                ),
              ),

              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            onColorChanged: changeColor1,
                            pickerColor: n1,

                          ),
                        ),
                      ),
                    );
                  },
                  child: Text("pick Color")
              ),

              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Xylo(colors1:n1,colors2: n2,colors3: n3,colors4: n4,colors5: n5,colors6: n6,colors7: n7,)));
              }, child: Text("Next"))
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: n2,
                ),
              ),

              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            onColorChanged: changeColor2,
                            pickerColor: n2,

                          ),
                        ),
                      ),
                    );
                  },
                  child: Text("pick Color")),
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Xylo(colors1:n1,colors2: n2,colors3: n3,colors4: n4,colors5: n5,colors6: n6,colors7: n7,)));
              }, child: Text("Next"))
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: n3,
                ),
              ),

              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            onColorChanged: changeColor3,
                            pickerColor: n3,

                          ),
                        ),
                      ),
                    );
                  },
                  child: Text("pick Color")),
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Xylo(colors1:n1,colors2: n2,colors3: n3,colors4: n4,colors5: n5,colors6: n6,colors7: n7,)));
              }, child: Text("Next"))
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: n4,
                ),
              ),

              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            onColorChanged: changeColor4,
                            pickerColor: n4,

                          ),
                        ),
                      ),
                    );
                  },
                  child: Text("pick Color")),
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Xylo(colors1:n1,colors2: n2,colors3: n3,colors4: n4,colors5: n5,colors6: n6,colors7: n7,)));
              }, child: Text("Next"))
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: n5,
                ),
              ),

              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            onColorChanged: changeColor5,
                            pickerColor: n5,

                          ),
                        ),
                      ),
                    );
                  },
                  child: Text("pick Color")),
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Xylo(colors1:n1,colors2: n2,colors3: n3,colors4: n4,colors5: n5,colors6: n6,colors7: n7,)));
              }, child: Text("Next"))
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: n6,
                ),
              ),

              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            onColorChanged: changeColor7,
                            pickerColor: n6,

                          ),
                        ),
                      ),
                    );
                  },
                  child: Text("pick Color")),
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Xylo(colors1:n1,colors2: n2,colors3: n3,colors4: n4,colors5: n5,colors6: n6,colors7: n7,)));
              }, child: Text("Next"))
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: n7,
                ),
              ),

              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            onColorChanged: changeColor7,
                            pickerColor: n7,

                          ),
                        ),
                      ),
                    );
                  },
                  child: Text("pick Color")),
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Xylo(colors1:n1,colors2: n2,colors3: n3,colors4: n4,colors5: n5,colors6: n6,colors7: n7,)));
              }, child: Text("Next"))
            ],
          ),
        ],

      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}

class Xylo extends StatelessWidget {
  Xylo({this.colors1,this.colors2,this.colors3,this.colors4,this.colors5,this.colors6,this.colors7});
  final Color colors1;
  final Color colors2;
  final Color colors3;
  final Color colors4;
  final Color colors5;
  final Color colors6;
  final Color colors7;


  void playsound(int value) {
    final player = AudioCache();
    player.play('note$value.wav');
  }

  Expanded button(int num, Color color) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playsound(num);
        },
        child: null,
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Xylophone"),
        leading: Icon(
         Icons.home,

        )

      ),
      body: Container(
        color: Colors.blueGrey,
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            button(1, colors1),
            SizedBox(
              height: 10.0,
            ),
            button(2, colors2),
            SizedBox(
              height: 10.0,
            ),
            button(3, colors3),
            SizedBox(
              height: 10.0,
            ),
            button(4, colors4),
            SizedBox(
              height: 10.0,
            ),
            button(5, colors5),
            SizedBox(
              height: 10.0,
            ),
            button(6, colors6),
            SizedBox(
              height: 10.0,
            ),
            button(7, colors7),
          ],
        ),
      ),
    );
  }
}
