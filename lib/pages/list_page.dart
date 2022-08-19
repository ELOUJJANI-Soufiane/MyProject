import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste Voitures"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 200,
                //color: Theme.of(context).colorScheme.primary,
                child: CircularPercentIndicator(
                  percent: 0.4,
                  animation: true,
                  animationDuration: 1200,
                  lineWidth: 25,
                  radius: 80,
                  progressColor: Theme.of(context).colorScheme.primary,
                  backgroundColor: Colors.purple.shade100,
                  circularStrokeCap: CircularStrokeCap.round,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return const ListTile(
                      title: Text("Car Task"),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
