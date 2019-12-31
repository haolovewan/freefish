


import 'package:flutter/material.dart';

class Messages extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MessageState();
  }
}


class MessageState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: new Text('消息'),
      ),
      body: new Container(
        child: RefreshIndicator(
          onRefresh: onRefresh,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildBuilderDelegate((BuildContext context, int index){
                  return renderList(index);
                }, childCount: 2),
              ),
            ],
          ),
        ),
      ),
    );
  }

  renderList(int index) {
    List list = [
      buildTop(),
      buildList(),
    ];
    return list[index];
  }

  buildTop() {
    return new Container(
      height: 120,
      child: new Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            bottom: 50,
            child: new Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              color: Colors.yellow,
            ),
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(8), bottomLeft: Radius.circular(8)),
              color: Colors.yellow
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: buildTopItem(),
          )
        ],
      ),
    );
  }

  buildList() {
    return new Container(
      child: Column(
        children: listData(),
      ),
    );
  }

  listData() {
    List list = [1,2,3,4,5,6,7,8];
    return list.map((item){
      return new Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.only(top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: new Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'),
              ),
            ),
            Expanded(
              flex: 1,
              child: new Container(
                margin: const EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12))
                ),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('你好我是咸鱼', style: TextStyle(fontWeight: FontWeight.bold),),
                        new Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: new Text('你好你好你好我要买东西'),
                        ),
                        new Text('3天'),
                      ],
                    ),
                    new Container(
                      width: 65,
                      height: 65,
                      margin: const EdgeInsets.only(bottom: 10, top: 10),
                      child: new Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }).toList();
  }

  buildTopItem(){
    return new Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(100)
                ),
                child: new Image.asset('images/topIcon5.png'),
              ),
              new Text('通知消息')
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(100)
                ),
                child: new Image.asset('images/topIcon5.png'),
              ),
              new Text('通知消息')
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(100)
                ),
                child: new Image.asset('images/topIcon5.png'),
              ),
              new Text('通知消息')
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(100)
                ),
                child: new Image.asset('images/topIcon5.png'),
              ),
              new Text('通知消息')
            ],
          )
        ],
      ),
    );
  }

  Future onRefresh () {
    return Future.delayed(Duration(seconds: 1), () {
      print('数据最新了');
    });
  }
}
