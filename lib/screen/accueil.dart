import 'package:flutter/material.dart';
import 'package:todo_app_flutter/screen/add_task.dart';
import 'package:todo_app_flutter/tabs/all.dart';
import 'package:todo_app_flutter/tabs/finish.dart';
// import 'package:todo_app_flutter/tabs/in_progress.dart';
import 'package:todo_app_flutter/tabs/priority.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "TODO APP",
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Colors.black,
                ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.blue,
            unselectedLabelColor: Colors.black.withOpacity(0.5),
            tabs: [
              Tab(
                child: Text(
                  'Tout',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.black.withOpacity(0.5),
                      ),
                ),
              ),
              Tab(
                child: Text(
                  'Prioritaire',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.black.withOpacity(0.5),
                      ),
                ),
              ),
              Tab(
                child: Text(
                  'Terminer',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.black.withOpacity(0.5),
                      ),
                ),
              ),
            ],
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            children: [
              All(),
              // InProgess(),
              Priority(),
              Finish(),
            ],
          ),
        ),
        floatingActionButton: Container(
          margin:
              EdgeInsets.only(right: size.width * 0.4, top: size.width * 0.2),
          child: FloatingActionButton(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AddTask(),
                ),
              );
            },
            shape: const CircleBorder(),
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
