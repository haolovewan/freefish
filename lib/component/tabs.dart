
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  Tabs({
    Key key,
    this.defaultIndex,
    @required this.list,
  }) : super(key: key);

  List list;
  int defaultIndex = 0;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabState();
  }

}

class TabState extends State<Tabs> with WidgetsBindingObserver {
  ScrollController _horital = new ScrollController();
  int currentIndex;
  double currentTabPosition = 20;
  double currentTabActionWidth = 88.0 - 40;
  GlobalKey scroll = new GlobalKey();
  @override
  void initState() {
    currentIndex = widget.defaultIndex;
    // TODO: implement initState
    super.initState();
    _horital.addListener((){
    });
  }


  @override
  Widget build(BuildContext context) {
    var  hw = MediaQuery.of(context).size.width / 2;
    // TODO: implement build
    return new Container(
      height: 50,
      child: Stack(
        children: <Widget>[
          ListView.builder(
            key: scroll,
            controller: _horital,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return TabItem(text: widget.list[index], index: index,onClick: (double p, int i, double w){
                var position = _horital.offset + (p - hw) + w/2;
                // print(position);
                if (position < _horital.position.maxScrollExtent && position > 0){
                  _horital.animateTo(position, duration: Duration(microseconds: 1500), curve: Curves.ease);
                  setState(() {
                    currentTabPosition = hw - currentTabActionWidth / 2;
                  });
                } else {
                  print(position);
                  if (position < 0) {
                    _horital.animateTo(0, duration: Duration(microseconds: 1500), curve: Curves.ease);
                  } else {
                    _horital.animateTo(_horital.position.maxScrollExtent, duration: Duration(microseconds: 1500), curve: Curves.ease);
                  }
                  setState(() {
                    currentTabPosition = p + currentTabActionWidth / 2;
                  });
                }
                setState(() {
                  currentIndex = index;
                  currentTabActionWidth = w - 40;
                });
              }, active: currentIndex == index);
            },
            itemCount: widget.list.length,
            // itemExtent:,
          ),
          // AnimatedPositioned(
          //   bottom: 0,
          //   left: currentTabPosition,
          //   curve: Curves.linear,
          //   child: new Container(
          //     width: currentTabActionWidth,
          //     height: 4,
          //     color: Colors.yellow,
          //   ),
          //   duration: const Duration(microseconds: 500),
          // )
          // Positioned(
          //   bottom: 0,
          //   left: currentTabPosition,
          //   child: new Container(
          //     width: currentTabActionWidth,
          //     height: 4,
          //     color: Colors.yellow,
          //   ),
          // )
        ],
      ),
    );
  }
}


class TabItem extends StatefulWidget {
  TabItem({
    Key key,
    this.text,
    this.onClick,
    this.index,
    this.active,
  });
  String text;
  Function onClick;
  int index;
  bool active;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabItemState();
  }
}

class TabItemState extends State<TabItem> {
  double tabWidth = 88.0 - 40;
  double tabOffset = 20.0;

  void _onAfterRendering(Duration timestamp) {
    RenderBox renderBox = context.findRenderObject(); // 获取元素大小
    Size size = renderBox.paintBounds.size; // 获取元素位置
    var offset = renderBox.localToGlobal(Offset.zero);
    widget.onClick(offset.dx, widget.index, size.width);
    setState(() {
      tabWidth = size.width - 40;
      tabOffset = offset.dx;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        new Container(
          // margin: const EdgeInsets.only(right: 20, left: 20),
          child: FlatButton(
            onPressed: () {
              WidgetsBinding.instance.addPostFrameCallback(_onAfterRendering);
            },
            child: new Text(widget.text, style: TextStyle(fontSize: 16, color: widget.active ? Colors.black : Colors.black45),),
          )
        ),
        widget.active ? Positioned(
          bottom: 0,
          left: 20,
          child: new Container(
            width: tabWidth,
            height: 4,
            color: Colors.yellow,
          ),
        ) : SizedBox()
      ],
    );
  }
}
