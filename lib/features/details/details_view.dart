import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_scaffold.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_text.dart';
import 'package:tangen_flutter/features/details/widgets/details_view_body.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  bool _isScrolledToTop = true;

  @override
  Widget build(BuildContext context) {
    return TangenScaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: transparent,
        scrolledUnderElevation: _isScrolledToTop ? 0 : 0.2,
        elevation: _isScrolledToTop ? 0 : 0.2,
        shape: Border(
          bottom: BorderSide(
            color: _isScrolledToTop ? transparent : black,
            width: _isScrolledToTop ? 0 : 0.1,
          ),
        ),
        leadingWidth: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 4),
          child: InkWell(
            splashColor: transparent,
            highlightColor: transparent,
            onTap: () {
              context.pop();
            },
            child: const Row(
              children: [
                Icon(Icons.arrow_back_ios_rounded,size: 20),
                SizedBox(width: 4),
                TangenText(
                  text: 'Back',
                  textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: black),
                ),
              ],
            ),
          ),
        ),
        centerTitle: true,
        title: const TangenText(
          text: 'Details',
          textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: black),
        ),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            setState(() {
              _isScrolledToTop = notification.metrics.pixels == 0 || notification.metrics.pixels < 0;
            });
          }
          return true;
        },
        child: const DetailsViewBody(),
      ),
    );
  }
}
