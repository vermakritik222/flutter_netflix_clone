import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrolloffset;

  const CustomAppBar({super.key, this.scrolloffset = 0.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      color:
          Colors.black.withOpacity((scrolloffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            const SizedBox(width: 12.0),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarrButton(
                    title: 'TV Shows',
                    onTap: () => print('tv shows'),
                  ),
                  _AppBarrButton(title: 'Movies', onTap: () => print('Movies')),
                  _AppBarrButton(
                    title: 'My List',
                    onTap: () => print('tv shows'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AppBarrButton extends StatelessWidget {
  final String title;
  final Function onTap;
  const _AppBarrButton({super.key, required this.title, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
