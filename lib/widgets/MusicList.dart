import 'package:flutter/material.dart';

class MusicList extends StatelessWidget {
  MusicList({super.key, required this.scrollController});
  ScrollController scrollController;
  List<String> names = [
    "Bones",
    "Calm Down",
    "People",
    "Unoly",
    "Snap",
    "Bones",
    "Calm Down",
    "People",
    "Unholy",
    "Snap"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      shrinkWrap: true,
      itemCount: names.length,
      itemBuilder: (context, index) {
        return MusicUI(
          songName: names[index],
        );
      },
    );
  }
}

class MusicUI extends StatelessWidget {
  MusicUI({
    super.key,
    required this.songName,
  });
  String songName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, right: 12, left: 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 88, 19, 173),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Image.asset(
          "assets/musicimage.jpeg",
          height: 35,
          width: 55,
        ),
        title: Text(
          songName,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          "Imagine Dragons",
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.play_circle_fill,
              color: Colors.white,
              size: 25,
            ),
            Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
              size: 25,
            ),
          ],
        ),
      ),
    );
  }
}
