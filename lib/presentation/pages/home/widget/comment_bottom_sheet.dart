import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media_task/app/extensions.dart';
import 'package:social_media_task/presentation/resources/assets_manger.dart';
import 'package:social_media_task/presentation/resources/color_manger.dart';
import 'package:social_media_task/presentation/resources/string_manger.dart';
import 'package:social_media_task/presentation/widgets/app_form_filed.dart';
import 'package:social_media_task/presentation/widgets/comment_with_reply.dart';
import 'package:social_media_task/presentation/widgets/suffix_button_for_form_filed.dart';

import '../../../../data/home/models/home_moduls/tree_node.dart';
import '../../../widgets/comment_widget.dart';

class CommentBottomSheet extends StatefulWidget {
  const CommentBottomSheet({super.key});

  @override
  State<CommentBottomSheet> createState() => _CommentBottomSheetState();
}

class _CommentBottomSheetState extends State<CommentBottomSheet> {
  List<MyTreeNode> roots = [];
  late TreeController<MyTreeNode> treeController;

  @override
  void initState() {
    roots = [
      MyTreeNode(
        title: CommentWidget(
          onReactionChanged: (value) {},
          isReply: false,
        ),
        children: [
          MyTreeNode(title: CommentWidget(onReactionChanged: (value) {})),
          MyTreeNode(title: CommentWidget(onReactionChanged: (value) {})),
          MyTreeNode(title: CommentWidget(onReactionChanged: (value) {})),
        ],
      ),
      MyTreeNode(
        title: CommentWidget(
          onReactionChanged: (value) {},
          isReply: false,
        ),
      ),
    ];
    treeController =
        TreeController(roots: roots, childrenProvider: (node) => node.children);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.w(context),
      height: .8.h(context),
      decoration: const BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SafeArea(
        top: true,
        bottom: false,
        minimum: EdgeInsets.only(
            top: MediaQuery.viewInsetsOf(context).bottom > 0 ? 30 : 0),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            titleSpacing: 20,
            title: const Text('10 ${AppStrings.comments}'),
            bottom: PreferredSize(
              preferredSize: Size(1.w(context), 15),
              child: const Divider(
                indent: 16,
                endIndent: 16,
              ),
            ),
          ),
          body: CommentWithReply(
            controller: treeController,
            withScroll: true,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          ),
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: Container(
            width: 1.w(context),
            decoration: BoxDecoration(
              color: ColorManager.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 24,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageAssets.person1),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                16.horizontalSpace(),
                const Expanded(
                  child: AppFormFiled(
                    withShadow: true,
                    fillColor: ColorManager.grey,
                    borderRadius: 10,
                    hint: AppStrings.writeAComment,
                    suffixIcon: SuffixButtonForFormFiled(
                      title: '',
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        FontAwesomeIcons.paperPlane,
                        color: ColorManager.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
