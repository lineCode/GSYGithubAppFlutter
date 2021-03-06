import 'package:flutter/material.dart';
import 'package:gsy_github_app_flutter/common/style/GSYStyle.dart';

/**
 * 搜索输入框
 * Created by guoshuyu
 * Date: 2018-07-20
 */
class GSYSearchInputWidget extends StatelessWidget {
  final ValueChanged<String> onChanged;

  final ValueChanged<String> onSubmitted;

  final VoidCallback onSubmitPressed;

  GSYSearchInputWidget(this.onChanged, this.onSubmitted, this.onSubmitPressed);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          color: Colors.white,
          border: new Border.all(color: Color(GSYColors.primaryValue), width: 0.3),
          boxShadow: [BoxShadow(color: Color(GSYColors.primaryDarkValue),  blurRadius: 4.0)]),
      padding: new EdgeInsets.only(left: 20.0, top: 12.0, right: 20.0, bottom: 12.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new TextField(
                  autofocus: false,
                  decoration: new InputDecoration.collapsed(
                    hintText: GSYStrings.repos_issue_search,
                    hintStyle: GSYConstant.middleSubText,
                  ),
                  style: GSYConstant.middleText,
                  onChanged: onChanged,
                  onSubmitted: onSubmitted)),
          new RawMaterialButton(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: const EdgeInsets.only(right: 5.0, left: 10.0),
              constraints: const BoxConstraints(minWidth: 0.0, minHeight: 0.0),
              child: new Icon(GSYICons.SEARCH, size: 15.0),
              onPressed: onSubmitPressed)
        ],
      ),
    );
  }
}
