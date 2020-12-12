import 'package:firebase_ddd_tutorial/application/worker/worker_actor/worker_actor_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/decoration.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker.dart';
import 'package:firebase_ddd_tutorial/presentation/core/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkerCard extends StatelessWidget {
  final Worker worker;

  const WorkerCard({Key key, @required this.worker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.15,
      secondaryActions: [
        IconSlideAction(
          caption: 'Delete',
          icon: Icons.delete,
          color: Colors.red,
          onTap: () {
            final workerActorBloc = context.read<WorkerActorBloc>();
            _showDeletionDialog(context, workerActorBloc);
          },
        ),
      ],
      child: Card(
        color: primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              createImageContainer(
                  diameter: 160,
                  imageUrl: worker.imageUrl.getOrCrash(),
                  imagePath: "assets/images/placeholder-portrait.jpg"),
              Container(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    const Text(
                      'Name: ',
                      style: TextStyle(fontSize: 24),
                    ),
                    Align(
                      child: Text(
                        worker.name.getOrCrash(),
                        style: const TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(
      BuildContext context, WorkerActorBloc workerActorBloc) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Delete worker:',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          content: Text(
            worker.name.getOrCrash(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.red,
            ),
          ),
          actions: [
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCEL'),
            ),
            FlatButton(
              onPressed: () {
                workerActorBloc.add(
                  WorkerActorEvent.deleted(worker),
                );
                Navigator.pop(context);
              },
              child: const Text(
                'DELETE',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
