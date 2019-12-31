
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

final data = [
  {
    'img': 'https://gw.alicdn.com/bao/uploaded/i4/121752845/O1CN01EHutmE1Wt3KdY434R_!!0-item_pic.jpg_500x500q90.jpg_.webp',
    'title': '非常好看的一件商品',
    'price': 350,
    'name': '寂寞在唱歌',
    'scroe': '芝麻信用|极好',
    'logo': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'
  },
  {
    'img': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576586742279&di=408097fdb6140af693946ddec85b6008&imgtype=0&src=http%3A%2F%2Fwww.52foto.com%2Fupload%2Fphotobus%2Fimages%2F1524000Ce.jpg',
    'title': '非常好看的一件商品',
    'price': 120,
    'name': '一条咸鱼',
    'scroe': '芝麻信用|极好',
    'logo': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929046&di=7c3d33f9344712fb014731de5e22950e&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201508%2F22%2F20150822183513_JcLEW.jpeg'
  },
  {
    'img': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576586742279&di=0bf3fc270d923ef58a65d78b8abff22d&imgtype=0&src=http%3A%2F%2Fimg011.hc360.cn%2Fm8%2FM09%2F5E%2F90%2FwKhQpVXcIsqECsh3AAAAAG2-m0s703.jpg',
    'title': '非常好看的一件商品',
    'price': 350,
    'name': '寂寞在唱歌',
    'scroe': '芝麻信用|极好',
    'logo': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'
  },
  {
    'img': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576586794006&di=aa5b5b6c05c8cefe5ab30dbf5c89f3b0&imgtype=0&src=http%3A%2F%2Fimg002.hc360.cn%2Fm7%2FM09%2F6D%2FA8%2FwKhQo1WtjGiEHfBrAAAAAA8INKI091.JPG',
    'title': '非常好看的一件商品',
    'price': 350,
    'name': '寂寞在唱歌',
    'scroe': '芝麻信用|极好',
    'logo': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'
  },
  {
    'img': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576586843272&di=b18ba2aafda89a79dd86cde9e4f2fbf8&imgtype=0&src=http%3A%2F%2Fimg.sccnn.com%2Fbimg%2F338%2F0209.jpg',
    'title': '非常好看的一件商品',
    'price': 350,
    'name': '寂寞在唱歌',
    'scroe': '芝麻信用|极好',
    'logo': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'
  },
  {
    'img': 'https://gw.alicdn.com/bao/uploaded/i4/121752845/O1CN01EHutmE1Wt3KdY434R_!!0-item_pic.jpg_500x500q90.jpg_.webp',
    'title': '非常好看的一件商品',
    'price': 350,
    'name': '寂寞在唱歌',
    'scroe': '芝麻信用|极好',
    'logo': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'
  },
  {
    'img': 'https://gw.alicdn.com/bao/uploaded/i4/121752845/O1CN01EHutmE1Wt3KdY434R_!!0-item_pic.jpg_500x500q90.jpg_.webp',
    'title': '非常好看的一件商品',
    'price': 350,
    'name': '寂寞在唱歌',
    'scroe': '芝麻信用|极好',
    'logo': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'
  },
  {
    'img': 'https://gw.alicdn.com/bao/uploaded/i4/121752845/O1CN01EHutmE1Wt3KdY434R_!!0-item_pic.jpg_500x500q90.jpg_.webp',
    'title': '非常好看的一件商品',
    'price': 350,
    'name': '寂寞在唱歌',
    'scroe': '芝麻信用|极好',
    'logo': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'
  },
  {
    'img': 'https://gw.alicdn.com/bao/uploaded/i4/121752845/O1CN01EHutmE1Wt3KdY434R_!!0-item_pic.jpg_500x500q90.jpg_.webp',
    'title': '非常好看的一件商品',
    'price': 350,
    'name': '寂寞在唱歌',
    'scroe': '芝麻信用|极好',
    'logo': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'
  },
  {
    'img': 'https://gw.alicdn.com/bao/uploaded/i4/121752845/O1CN01EHutmE1Wt3KdY434R_!!0-item_pic.jpg_500x500q90.jpg_.webp',
    'title': '非常好看的一件商品',
    'price': 350,
    'name': '寂寞在唱歌',
    'scroe': '芝麻信用|极好',
    'logo': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'
  },
  {
    'img': 'https://gw.alicdn.com/bao/uploaded/i4/121752845/O1CN01EHutmE1Wt3KdY434R_!!0-item_pic.jpg_500x500q90.jpg_.webp',
    'title': '非常好看的一件商品',
    'price': 350,
    'name': '寂寞在唱歌',
    'scroe': '芝麻信用|极好',
    'logo': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'
  },
  {
    'img': 'https://gw.alicdn.com/bao/uploaded/i4/121752845/O1CN01EHutmE1Wt3KdY434R_!!0-item_pic.jpg_500x500q90.jpg_.webp',
    'title': '非常好看的一件商品',
    'price': 350,
    'name': '寂寞在唱歌',
    'scroe': '芝麻信用|极好',
    'logo': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'
  },
  {
    'img': 'https://gw.alicdn.com/bao/uploaded/i4/121752845/O1CN01EHutmE1Wt3KdY434R_!!0-item_pic.jpg_500x500q90.jpg_.webp',
    'title': '非常好看的一件商品',
    'price': 350,
    'name': '寂寞在唱歌',
    'scroe': '芝麻信用|极好',
    'logo': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'
  },
  {
    'img': 'https://gw.alicdn.com/bao/uploaded/i4/121752845/O1CN01EHutmE1Wt3KdY434R_!!0-item_pic.jpg_500x500q90.jpg_.webp',
    'title': '非常好看的一件商品',
    'price': 350,
    'name': '寂寞在唱歌',
    'scroe': '芝麻信用|极好',
    'logo': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'
  },
  {
    'img': 'https://gw.alicdn.com/bao/uploaded/i4/121752845/O1CN01EHutmE1Wt3KdY434R_!!0-item_pic.jpg_500x500q90.jpg_.webp',
    'title': '非常好看的一件商品',
    'price': 350,
    'name': '寂寞在唱歌',
    'scroe': '芝麻信用|极好',
    'logo': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576585929047&di=09942eacbe9bea1f835d129d806e90be&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg'
  },
];

class TabsView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabsViewState();
  }
}

class TabsViewState extends State<TabsView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverStaggeredGrid.countBuilder(
      crossAxisCount: 2,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return new Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black12, offset: Offset(0, 1), blurRadius: 2)],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: <Widget>[
              new Image.network(data[index]['img']),
              new Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                margin: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12))
                ),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text('￥ ${data[index]["price"]}', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                    new Text('100人想要', style: TextStyle(fontSize: 12, color: Colors.black45),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: new Row(
                  children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: new Image.network(data[index]['logo'], width: 40,height: 40),
                      ),
                    ),
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('${data[index]["name"]}'),
                        new Text('${data[index]["scroe"]}', style: TextStyle(color: Colors.greenAccent, fontSize: 12),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
      staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
    );
  }
}
