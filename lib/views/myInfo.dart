


import 'package:flutter/material.dart';

class MyInfo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyInfoState();
  }
}

class MyInfoState extends State<MyInfo> with SingleTickerProviderStateMixin {
  ScrollController _customScroll = new ScrollController();
  double scrollTop = 0.0;

  @override
  void initState() {
    _customScroll.addListener((){
      setState(() {
        if (_customScroll.position.pixels < 0) {
          scrollTop = 0.0;
        } else {
          if (_customScroll.position.pixels == 0) {
            scrollTop = 0.0;
          } else {
            scrollTop = 1.0;
          }
        }
        // scrollTop = _customScroll.position.pixels;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  Future onRefresh () {
    return Future.delayed(Duration(seconds: 1), () {
      print('数据最新了');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      // appBar: AppBar(
      //   toolbarOpacity: scrollTop,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      //   title: new Text('是个龙迷'),
      //   actions: <Widget>[
      //     new Icon(Icons.settings),
      //   ],
      // ),
      body: new Stack(
        children: <Widget>[
          Opacity(
            opacity: scrollTop == 1 ? 0 : 1,
            child: new Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/5,
              color: Colors.yellow,
            ),
          ),
          new Container(
            child: RefreshIndicator(
            // backgroundColor: Colors.yellow,
              color: Colors.yellow,
              onRefresh: onRefresh,
              child: CustomScrollView(
                controller: _customScroll,
                scrollDirection: Axis.vertical,
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildBuilderDelegate((BuildContext context, int index){
                      return renderList(index);
                    },childCount: 5),
                  ),
                ],
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: scrollTop,
            duration: new Duration(milliseconds: 800),
            curve: Curves.ease,
            child: new Container(
              // width: MediaQuery.of(context).size.width,
              height: 80,
              color: Colors.yellow,
              child: AppBar(
                elevation: 0.0,
                title: Text('是个龙迷'),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: new Icon(Icons.settings),
                  )
                ],
              )
            ),
          ),
          // Opacity(
          //   opacity: scrollTop,
          //   child: new Container(
          //     width: MediaQuery.of(context).size.width,
          //     height: 80,
          //     color: Colors.yellow,
          //     child: AppBar(
          //       elevation: 0.0,
          //       title: Text('是个龙迷'),
          //       actions: <Widget>[
          //         Padding(
          //           padding: const EdgeInsets.only(right: 15),
          //           child: new Icon(Icons.settings),
          //         )
          //       ],
          //     )
          //     // Stack(
          //     //   children: <Widget>[
          //     //     new Container(
          //     //       height: 80,
          //     //       color: Colors.red,
          //     //       child: new Text('是个龙迷'),
          //     //     ),
          //     //     Positioned(
          //     //       bottom: 0,
          //     //       right: 15,
          //     //       child: new Icon(Icons.settings),
          //     //     )
          //     //   ],
          //     // ),
          //   ),
          // )
        ],
      ),
    );
  }

  renderList(int index) {
    List list = [
      buildHeader(),
      buildSecond(
        title: '卖在咸鱼',
        subTitle: '在咸鱼赚了1395.00元',
        list: [
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          // Column(
          //   children: <Widget>[
          //     new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
          //     new Text('我发布的 3'),
          //   ],
          // ),
          // Column(
          //   children: <Widget>[
          //     new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
          //     new Text('我发布的 3'),
          //   ],
          // ),
        ]
      ),
      buildSecond(
        title: '买在咸鱼',
        subTitle: '',
        list: [
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          // Column(
          //   children: <Widget>[
          //     new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
          //     new Text('我发布的 3'),
          //   ],
          // ),
          // Column(
          //   children: <Widget>[
          //     new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
          //     new Text('我发布的 3'),
          //   ],
          // ),
        ]
      ),
      buildSecond(
        title: '玩在咸鱼',
        subTitle: '',
        rowNum: 4,
        list: [
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          )
        ]
      ),
      buildSecond(
        title: '其他工具',
        subTitle: '',
        rowNum: 4,
        list: [
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          ),
          Column(
            children: <Widget>[
              new Icon(Icons.settings_backup_restore, size: 35, color: Colors.yellow,),
              new Text('我发布的 3'),
            ],
          )
        ]
      ),
    ];
    return list[index];
  }

  buildHeader() {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        new Container(
          width: MediaQuery.of(context).size.width,
          height: 180,
          padding: const EdgeInsets.only(left: 15, right: 15),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
          ),
          child: new Container(
            child: Row(
              children: <Widget>[
                new Container(
                  width: 80,
                  height: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: new Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'),
                  ),
                ),
                new Container(
                  height: 80,
                  margin: const EdgeInsets.only(left: 15),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text('是个龙迷', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      new Text('昵称: 要奋斗的皮皮虾龙迷'),
                      new Container(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white60
                        ),
                        child: new Text('个人主页>', style: TextStyle(fontSize: 12),),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: new Container(
                    // color: Colors.red,
                    height: 80,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: new Icon(Icons.settings),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -20,
          child: new Container(
            width: MediaQuery.of(context).size.width - 30,
            height: 50,
            margin: const EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: new Container(
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.black54)),
                    ),
                    child: new Text('1超赞', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: new Container(
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.black54)),
                    ),
                    child: new Text('1超赞', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: new Container(
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.black54)),
                    ),
                    child: new Text('1超赞', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  buildSecond({
    title = '卖在咸鱼',
    subTitle = '在咸鱼赚了1395.00元',
    @required List<Widget> list,
    rowNum = 3,
  }){
    return Container(
      // height: 200,
      margin: const EdgeInsets.only(left: 15,top: 30, right: 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: new Container(
        width: MediaQuery.of(context).size.width - 30,
        // margin: const EdgeInsets.only(left: 15, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
                new Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: new Text(subTitle, style: TextStyle(color: Colors.black45),),
                ),
              ],
            ),
            new Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: new Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                // runAlignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                spacing: 50.0,
                runSpacing: 10,
                children: list.map((item){
                  return item;
                }).toList(),
              ),
            )
          ],
        ),
      )
    );
  }
}

