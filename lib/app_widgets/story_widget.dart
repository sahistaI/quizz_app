
import 'package:flutter/material.dart';
import '../../data/model/story_model.dart';
import '../utils/util_helper.dart';


class StoryWidget extends StatelessWidget {
  final List<StoryModel> stories;

  StoryWidget({required this.stories}); // Accepting stories dynamically

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120, // Restrict height for horizontal scrolling
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Enable horizontal scrolling
        itemCount: stories.length,
        itemBuilder: (context, index) {
          final story = stories[index]; // Get each story item
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage(story.images), // Load image
                    radius: 38
                ),
                SizedBox(
                  width: 80,
                  child: Text(
                    story.name, // Display name
                    style: mTextStyle14(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
