import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

class ReactionWidget extends StatelessWidget {
  final void Function(Reaction<String>?) onReactionChanged;

  const ReactionWidget({required this.onReactionChanged, super.key});

  @override
  Widget build(BuildContext context) {
    return ReactionButton<String>(
      itemScale: .99,
      boxAnimationDuration: const Duration(milliseconds: 50),
      hoverDuration: const Duration(microseconds: 1),
      itemAnimationDuration: const Duration(microseconds: 1),
      boxPadding: const EdgeInsets.all(8),
      reactions: <Reaction<String>>[
        getReaction(
          value: 'like',
          icon: '👍',
        ),
        getReaction(
          value: 'love',
          icon: '❤️',
        ),
        getReaction(
          value: 'haha',
          icon: '😂',
        ),
        getReaction(
          value: 'sad',
          icon: '🥲',
        ),
        getReaction(
          value: 'agree',
          icon: '🙏',
        ),
        getReaction(
          value: 'disLike',
          icon: '👎',
        ),
        getReaction(
          value: 'angry',
          icon: '😡',
        ),
      ],
      onReactionChanged: onReactionChanged,
      itemSize: const Size(30, 30),
      itemsSpacing: 10,
    );
  }

  Reaction<String> getReaction({required String value, required String icon}) {
    return Reaction<String>(
      value: value,
      previewIcon: Text(
        icon,
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
      icon: Text(
        icon,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
