import 'package:flutter/material.dart';

class FollowButton extends StatefulWidget {
  final bool isFollowing;
  final VoidCallback onFollow;
  final VoidCallback onUnfollow;

  FollowButton({
    required this.isFollowing,
    required this.onFollow,
    required this.onUnfollow,
  });

  @override
  _FollowButtonState createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  late bool _isFollowing;

  @override
  void initState() {
    super.initState();
    _isFollowing = widget.isFollowing;
  }

  void _toggleFollow() {
    setState(() {
      _isFollowing = !_isFollowing;
    });
    if (_isFollowing) {
      widget.onFollow();
    } else {
      widget.onUnfollow();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: _isFollowing ? Colors.grey[300] : Color(0xFF1DA1F2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onPressed: _toggleFollow,
      child: Text(
        _isFollowing ? 'Following' : 'Follow',
        style: TextStyle(color: _isFollowing ? Colors.black : Colors.white),
      ),
    );
  }
}
