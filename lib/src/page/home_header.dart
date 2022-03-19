import 'package:flutter/material.dart';
import 'package:mpv_v1/src/widgets/w_headers.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:WHeadersOne(),
    );
  }
}