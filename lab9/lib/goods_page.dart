import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'goods_block.dart';

class GoodsPage extends StatefulWidget {
  const GoodsPage({super.key, required this.title});

  final String title;

  @override
  State<GoodsPage> createState() => _GoodsPageState(title: title);
}

class _GoodsPageState extends State<GoodsPage> {
  final String title;

  late final GoodsBloc _goodsBloc;

  _GoodsPageState({required this.title});

  @override
  void initState() {
    super.initState();
    _goodsBloc = GoodsBloc(goodsId: title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Goods')),
      body: BlocBuilder<GoodsBloc, GoodsState>(
        bloc: _goodsBloc,
        builder: (context, state) {
          return Column(
            children: [
              ListTile(
                title: Text(title),
                subtitle: Text('Car from Cars'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        _goodsBloc.add(DecrementEvent());
                      },
                    ),
                    Text('${state.goodsCount[title]}'),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        _goodsBloc.add(IncrementEvent());
                      },
                    ),
                  ],
                ),
              ),
              Image.asset(
                title,
                width: 320,
                height: 350,
              )
            ],
          );
        },
      ),
    );
  }
}
