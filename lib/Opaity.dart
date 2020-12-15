import 'package:flutter/material.dart';
// import 'dart:ui';


class OpacityClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widgets = [
      MyWidget(Colors.green),
      Opacity(
        opacity: 0.0,
        child: MyWidget(Colors.blue),
      ),
      MyWidget(Colors.yellow),
    ];
    return Column(
      children: widgets,
    );
  }
}

class MyWidget extends StatelessWidget {
      final Color color;
      MyWidget(this.color);
      @override
      Widget build(BuildContext context) {
        return Container(
          margin: EdgeInsets.all(10),
          width: 50,
          height: 50,
          color: color,
        );
  }
}

// To see this layout, in the MyApp widget replace SomeWidget() with this
// StackedWidgetsDemo widget.
class StackedWidgetsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(children: [
        MyImageWidget(),
        Opacity(
          opacity: 0.25,
          child: MyGradientWidget(),
        )
      ]),
    );
  }
}
class MyImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage('https://placekitten.com/200/200'),
    );
  }
}
class MyGradientWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.black, Colors.white],
        ),
      ),
    );
  }
}
// To see this layout, in the MyApp widget replace SomeWidget() with this
// AnimatedOpacityDemo widget.
class AnimatedOpacityDemo extends StatefulWidget {
  @override
  _AnimatedOpacityDemoState createState() => _AnimatedOpacityDemoState();
}

class _AnimatedOpacityDemoState extends State<AnimatedOpacityDemo> {
  final _myDuration = Duration(seconds: 2);
  var _myOpacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SizedBox(
            width: 200,
            height: 200,
            child: Stack(
              children: [
                MyImageWidget(),
                AnimatedOpacity(
                  duration: _myDuration,
                  opacity: _myOpacity,
                  child: MyGradientWidget(),
                )
              ],
            ),
          ),
        ),
        updateStateButton()
      ],
    );
  }

  Align updateStateButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 100),
        child: RaisedButton(
          child: Text('Animate Opacity'),
          onPressed: () {
            setState(() {
              _myOpacity = 0.0;
            });
          },
        ),
      ),
    );
  }
}