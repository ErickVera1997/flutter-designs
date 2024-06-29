import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image(image: AssetImage('assets/landscape.jpg')),
            _Title(),
            _ButtonSection(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Laboris enim occaecat do et id velit dolore qui Lorem. Dolore ut incididunt consequat sunt do nisi aliqua pariatur ex quis cupidatat. Enim aliqua deserunt voluptate Lorem Lorem in cillum aute veniam. Ipsum irure eiusmod occaecat qui dolor consectetur aliquip deserunt sint labore qui aute mollit. Veniam duis adipisicing do mollit aliquip minim ',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text(
            '41',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  const _ButtonSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _CustomButton(icon: Icons.call, text: 'Call'),
          _CustomButton(icon: Icons.map_sharp, text: 'Route'),
          _CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
