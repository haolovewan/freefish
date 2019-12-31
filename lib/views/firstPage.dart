

import 'package:flutter/material.dart';
import '../component/tabs.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../component/tabsView.dart';


class FirstPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FirstPageState();
  }
}

class FirstPageState extends State<FirstPage> {
  List listData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: new Container(
          color: Colors.transparent,
          child: new Image.asset('images/logo.png', fit: BoxFit.contain,),
        ),
        actions: <Widget>[
          new Icon(Icons.crop_free),
        ],
        title: new Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.search),
              new Text('运动相机 | 稳定器', style: TextStyle(color: Colors.black45, fontSize: 14),)
            ],
          ),
        ),
      ),
      body: new Container(
        child: RefreshIndicator(
          onRefresh: onRefresh,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildBuilderDelegate((BuildContext context, int index){
                  return renderOther(index);
                }, childCount: 4),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                sliver: TabsView(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future onRefresh() {
    return Future.delayed(Duration(seconds: 1), () {
      print('数据最新了');
    });
  }

  renderOther(int index) {
    var list = [
      buildHeadTop(),
      secodeFloot(),
      threeFloor(),
      Tabs(
        defaultIndex: 0,
        list: [
          '关注',
          '新鲜',
          '附近',
          '手机',
          '数码',
          '租房',
          '服装',
          '居家',
          '美妆',
          '运动',
          '家电',
          '玩具乐器',
          '短租'
        ],
      ),
    ];
    return list[index];
  }

  buildHeadTop() {
    return new Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Positioned(
          bottom: 20,
          child: new Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
              color: Colors.yellow,
            ),
          ),
        ),
        new Container(
          // color: Colors.yellow,
          // height: 80,
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
            height: 100,
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                headTopItem(),
                headTopItem(icon: 'images/topIcon2.png', text: '奢品珠宝'),
                headTopItem(icon: 'images/topIcon1.png', text: '二手图书'),
                headTopItem(icon: 'images/topIcon4.png', text: '潮品'),
                headTopItem(icon: 'images/topIcon5.png', text: '全部分类'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  headTopItem({text: '二手手机', icon: 'images/topIcon1.png'}) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(100)
          ),
          child: new Image.asset(icon),
        ),
        new Text(text),
      ],
    );
  }

  secodeFloot(){
    return new Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      margin: const EdgeInsets.only(top: 15),
      child: new Container(
        // height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                secondItem(rightLine: true),
                secondItem(),
              ],
            ),
            new Row(
              children: <Widget>[
                secondItem(rightLine: true),
                secondItem(),
              ],
            ),
            secondBottom()
          ],
        ),
      )
    );
  }

  secondItem({bool rightLine = false}) {
    return Expanded(
      flex: 1,
      child: new Container(
        height: 80,
        padding: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12), right: rightLine ? BorderSide(color: Colors.black12) : BorderSide.none),
        ),
        // color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('逛同城', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                new Text('32.0万人在线', style: TextStyle(color: Colors.black45),)
              ],
            ),
            new Container(
              width: 50,
              height: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: new Image.asset('images/secondImage.png'),
              ),
            )
          ],
        ),
      ),
    );
  }

  secondBottom(){
    return new Container(
      // height: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
        child: Row(
          children: <Widget>[
            new Container(
              width: 120,
              height: 50,
              child: new Image.asset('images/mingxinzaixianyu.png', fit: BoxFit.contain,),
            ),
            Expanded(
              flex: 1,
              child: new Row(
                children: <Widget>[
                  new Text('Andy: 宠粉抽送IPhone11pro', style: TextStyle(fontWeight: FontWeight.bold),),
                  Expanded(
                    flex: 1,
                    child: new Image.asset('images/mingxingimage.png', fit: BoxFit.fill,),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }

  threeFloor(){
    return new Container(
      padding: const EdgeInsets.all(15),
      child: new Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Column(
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text('卖闲置能换钱', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  new Text('最新发布771件闲置')
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  threeFloorItem(),
                  threeFloorItem(icon: 'images/taobaozhuan.png', topText: '淘宝转卖',bottomText: '网购宝贝一键发布', topTextStyle: TextStyle(color: Colors.redAccent, fontSize: 16)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 165,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        threeFloorItem(icon: 'images/xinyong.png', topText: '信用回收', bottomText: '先收钱 再寄货', topTextStyle: TextStyle(color: Colors.red, fontSize: 16)),
                        new Container(
                          width: 135,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Text('57类上门回收', style: TextStyle(color: Colors.white),),
                              new Icon(Icons.keyboard_arrow_right, color: Colors.white,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            new Image.asset('images/iPhone.png', width: 55,height: 55,),
                            new Text('手机回收', style: TextStyle(color: Colors.black45),)
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            new Image.asset('images/iPhone.png', width: 55,height: 55,),
                            new Text('手机回收', style: TextStyle(color: Colors.black45),)
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            new Image.asset('images/iPhone.png', width: 55,height: 55,),
                            new Text('手机回收', style: TextStyle(color: Colors.black45),)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  threeFloorItem({
    icon = 'images/zhidemai.png',
    topText = '什么值得卖',
    bottomText = '超多人求购',
    TextStyle topTextStyle,
  }) {
    return Row(
      children: <Widget>[
        new Image.asset(icon, width: 50,height: 50,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(topText , textAlign: TextAlign.left, style: topTextStyle ?? TextStyle(color: Colors.orange, fontSize: 16),),
            new Text(bottomText, textAlign: TextAlign.left, style: TextStyle(color: Colors.black45),)
          ],
        )
      ],
    );
  }

  buildTabView() {
    return new Container(
      height: 800,
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        itemCount: 20,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return new Container(
            color: Colors.green,
            child: new Text('$index'),
          );
        },
        staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      )
    );
  }

  @override
  void dispose() {
    // 组件销毁时，释放资源（一定不能忘，否则可能会引起内存泄露）
    super.dispose();
  }

}
