import 'package:flutter_testes_de_unidade/components/sections/actions.dart';
import 'package:flutter_testes_de_unidade/components/sections/header.dart';
import 'package:flutter_testes_de_unidade/components/sections/points_exchange.dart';
import 'package:flutter_testes_de_unidade/components/sections/recent_activities.dart';
import 'package:flutter_testes_de_unidade/data/bank_http.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(), // cuidado com o const
            RecentActivity(),
            ActionsSection(),
            PointsExchange(),
          ],
        ),
      ),
    );
  }
}
