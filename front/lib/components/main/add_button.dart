import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front/bloc/state_bloc.dart/bloc/state_bloc.dart';

class Addbutton extends StatelessWidget {
  Addbutton({Key? key, required this.onTap}) : super(key: key);
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StateBloc, StatesState>(
      builder: (context, state) {
        return (state.state == false)
            ? ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white12),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 35,
                    height: 35,
                    child: InkWell(
                        hoverColor: const Color.fromARGB(36, 255, 255, 255),
                        splashColor: const Color.fromARGB(74, 255, 255, 255),
                        onTap: onTap,
                        child: const Align(
                            alignment: FractionalOffset.center,
                            child: Icon(
                              Icons.add_rounded,
                              color: Colors.grey,
                              size: 18,
                            ))),
                  ),
                ),
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white12),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 35,
                    height: 35,
                    child: InkWell(
                        hoverColor: const Color.fromARGB(36, 255, 255, 255),
                        splashColor: const Color.fromARGB(74, 255, 255, 255),
                        onTap: onTap,
                        child: const Align(
                            alignment: FractionalOffset.center,
                            child: Icon(
                              Icons.done_rounded,
                              color: Colors.grey,
                              size: 18,
                            ))),
                  ),
                ),
              );
      },
    );
  }
}
