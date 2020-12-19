import 'package:firebase_ddd_tutorial/application/core/image/image_handler/image_handler_bloc.dart';
import 'package:firebase_ddd_tutorial/application/worker/worker_actor/worker_actor_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/decoration.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker.dart';
import 'package:firebase_ddd_tutorial/presentation/core/deletion_dialog.dart';
import 'package:firebase_ddd_tutorial/presentation/core/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkerCard extends StatelessWidget {
  final Worker worker;

  const WorkerCard({Key key, @required this.worker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void delete() {
      final workerActorBloc = context.read<WorkerActorBloc>();
      workerActorBloc.add(
        WorkerActorEvent.deleted(worker),
      );
      final workerImageHandlerBloc = context.read<ImageHandlerBloc>();
      workerImageHandlerBloc.add(
        ImageHandlerEvent.imageDeleted(
          worker.imageUrl.getOrCrash(),
        ),
      );
    }

    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.15,
      secondaryActions: [
        IconSlideAction(
          caption: 'Delete',
          icon: Icons.delete,
          color: Colors.red,
          onTap: () {
            DeletionDialog.show(
                context: context,
                title: 'worker',
                content: worker.name.getOrCrash(),
                onDelete: delete);
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
}
