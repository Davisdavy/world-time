import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';



class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String timeLoad = 'loading...';

 void setupWorldTime() async{
   WorldTime worldTime = WorldTime(location: 'Nairobi', flag: 'kenya.png', url: 'Africa/Nairobi');
   await worldTime.getTime();
   print(worldTime.time);
   setState(() {
     timeLoad = worldTime.time;
   });

 }

  @override
  void initState() {
    super.initState();
    setupWorldTime();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0) ,
        child: Text(timeLoad),
      ),
    );
  }
}
