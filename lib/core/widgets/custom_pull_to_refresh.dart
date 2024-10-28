
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class CustomPullToRefresh extends StatelessWidget {
  final Widget child;
  final RefreshController controller;
  final void Function()? onRefresh;
  final void Function()? onLoading;
  final bool enablePullUp;
  const CustomPullToRefresh({
    super.key,
    required this.child,
    required this.controller,
    required this.onRefresh,
    this.enablePullUp = false,
    this.onLoading,
  });

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: controller,
      enablePullUp: enablePullUp,
      header: CustomHeader(
        builder: (context, mode) {
          Widget body;
          if (mode == RefreshStatus.idle) {
            body = const Icon(Icons.arrow_downward);
          } else if (mode == RefreshStatus.canRefresh) {
            body = const Icon(Icons.refresh);
          } else if (mode == RefreshStatus.refreshing) {
            body = const CupertinoActivityIndicator();
          } else if (mode == RefreshStatus.completed) {
            body = const Icon(Icons.done);
          } else if (mode == RefreshStatus.failed) {
            body = const Icon(Icons.error_outline);
          } else {
            body = const Icon(Icons.error_outline);
          }
          return SizedBox(
            height: 55.0,
            child: Center(child: body),
          );
        },
      ),
      footer: CustomFooter(
        loadStyle: LoadStyle.ShowWhenLoading,
        builder: (context, mode) {
          Widget body;
          if (mode == LoadStatus.idle) {
            body = const Icon(Icons.arrow_downward);
          } else if (mode == LoadStatus.canLoading) {
            body = const Icon(Icons.refresh);
          } else if (mode == LoadStatus.loading) {
            body = const CupertinoActivityIndicator();
          } else if (mode == LoadStatus.noMore) {
            body = const Icon(Icons.done);
          } else if (mode == LoadStatus.failed) {
            body = const Icon(Icons.error_outline);
          } else {
            body = const Icon(Icons.error_outline);
          }
          return SizedBox(
            height: 55.0,
            child: Center(child: body),
          );
        },
      ),
      onRefresh: onRefresh,
      onLoading: onLoading,
      child: child,
    );
  }
}
