import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  final bool isLiked;
  final int likeCount;
  final VoidCallback onLike;
  final VoidCallback onUnlike;

  LikeButton({
    required this.isLiked,
    required this.likeCount,
    required this.onLike,
    required this.onUnlike,
  });

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  late bool _isLiked;
  late int _likeCount;

  @override
  void initState() {
    super.initState();
    _isLiked = widget.isLiked;
    _likeCount = widget.likeCount;
  }

  void _toggleLike() {
    setState(() {
      if (_isLiked) {
        _likeCount--;
        widget.onUnlike();
      } else {
        _likeCount++;
        widget.onLike();
      }
      _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            _isLiked ? Icons.favorite : Icons.favorite_border,
            color: _isLiked ? Colors.red : Colors.grey,
          ),
          onPressed: _toggleLike,
        ),
        Text('$_likeCount'),
      ],
    );
  }
}
