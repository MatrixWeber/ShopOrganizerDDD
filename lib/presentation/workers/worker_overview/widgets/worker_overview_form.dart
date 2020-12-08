import 'package:firebase_ddd_tutorial/application/worker/worker_watcher/worker_watcher_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkerOverviewForm extends StatelessWidget {
  final Shop shop;

  const WorkerOverviewForm({Key key, @required this.shop}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkerWatcherBloc, WorkerWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(
            color: Colors.blue,
            child: const Text('No Worker found'),
          ),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final worker = state.worker[index];
                if (worker.failureOption.isSome()) {
                  return Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                  );
                } else {
                  return Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  );
                }
              },
              itemCount: state.worker.size,
            );
          },
          loadFailure: (state) {
            return Container(
              color: Colors.yellow,
              width: 200,
              height: 200,
            );
          },
        );
      },
    );
  }
}
