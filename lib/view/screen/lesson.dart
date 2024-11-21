import 'package:flutter/material.dart';
import 'package:ui_response/core/const/color.dart';
import 'package:ui_response/view/widget/homepage/appbar.dart';
import 'package:ui_response/view/widget/homepage/floatactionbutton.dart';
import 'package:video_player/video_player.dart';

class Lesson extends StatefulWidget {
  const Lesson({super.key});

  @override
  State<Lesson> createState() => _LessonState();
}

class _LessonState extends State<Lesson> {
  late VideoPlayerController videoPlayerController= VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_){
      });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome("Lesson"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: videoPlayerController.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: videoPlayerController.value.aspectRatio,
                        child: VideoPlayer(videoPlayerController),
                      )
                    : Container())
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        backgroundColor: AppColor.blue,
        child: videoPlayerController.value.isPlaying?Icon(Icons.pause,color: Colors.white,):Icon(Icons.play_arrow,color: Colors.white,),
        onPressed: (){
         setState(() {
            videoPlayerController.value.isPlaying
                ? videoPlayerController.pause()
                : videoPlayerController.play();
          });
      })
      
    );
  }
}
