import 'package:crewbella_task/bloc/screenTwo_Cubit/screentwo_cubit.dart';
import 'package:crewbella_task/network/model/user.dart';
import 'package:crewbella_task/network/network.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);
  static const String routeName = '/screen-two';

  @override
  Widget build(BuildContext context) {
    final String? args = ModalRoute.of(context)!.settings.arguments as String;
    return BlocProvider(
      create: (_) =>
          ScreentwoCubit(context.read<NetworkConnection>())..getUser(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Data: ${args ?? ""}'),
        ),
        body: BlocConsumer<ScreentwoCubit, ScreentwoState>(
          listener: (context, state) {
            if (state is ScreentwoFailed) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(state.errMsg),
                    backgroundColor: Colors.red,
                  ),
                );
            }
          },
          builder: (context, state) {
            if (state is ScreentwoLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is ScreentwoLoaded) {
              return ProfileDesign(user: state.user);
            }
            return Container();
          },
        ),
      ),
    );
  }
}

class ProfileDesign extends StatelessWidget {
  final User user;
  const ProfileDesign({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurple.shade800, Colors.deepPurpleAccent],
              ),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 20.0,
              ),
              CircleAvatar(
                radius: 65.0,
                backgroundImage: NetworkImage(user.basic?.imageHd ?? ''),
                backgroundColor: Colors.white,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(user.basic?.fullname ?? "",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  )),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Followers: ${user.basic?.followings ?? 0}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  Text(
                    'Location: ${user.locations?.first.city ?? ""}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '@ ${user.basic?.username ?? 0}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  Text(
                    'QuickBooks: ${user.basic?.quickBookings ?? 0}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
            ]),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.grey[200],
            child: Center(
              child: Card(
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Information",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Divider(
                          color: Colors.grey[300],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.post_add,
                              color: Colors.blueAccent[400],
                              size: 35,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "No of client posts:",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                                Text(
                                  "${user.clientPostings?.length}",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey[400],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.event,
                              color: Colors.yellowAccent[400],
                              size: 35,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "No of events:",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                                Text(
                                  "${user.events?.length ?? 0}",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey[400],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.verified_user,
                              color: Colors.pinkAccent[400],
                              size: 35,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Verified:",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                                Text(
                                  user.basic?.isVerified ?? false
                                      ? 'Yes'
                                      : 'No',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey[400],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.cake,
                              color: Colors.lightGreen[400],
                              size: 35,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "DOB:",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                                Text(
                                  user.basic?.dob ?? 'Not Available',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey[400],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
