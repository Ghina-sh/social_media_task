import 'package:flutter/material.dart';

class MyTreeNode {
  const MyTreeNode({
    required this.title,
    this.children = const <MyTreeNode>[],
  });

  final Widget title;
  final List<MyTreeNode> children;
}
