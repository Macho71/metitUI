import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubit/home_state.dart';

// ignore: must_be_immutable
class BodyHome extends StatelessWidget {
  BodyHome({
    Key? key,
    
  }) : super(key: key);


  get index => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<HomeCubit, HomeState>(
      builder: ((context, state) => Scaffold(
            appBar: AppBar(
              title: const Text("Home"),
              backgroundColor: const Color.fromARGB(255, 76, 99, 76),
            ),
            body: Builder(
              builder: ((context) {
                if (state is HomeLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (state is HomeErrorState) {
                  return Center(
                    child: Text(state.error),
                  );
                } else if (state is HomeCompleteState) {
                  return SizedBox(
                      height: 100,
                      width: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              
                              child: Text("Hello"),
                            ),
                          );
                        },
                      ));
                }
                // return Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Padding(
                //         padding: const EdgeInsets.symmetric(
                //             horizontal: 10, vertical: 8),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text(
                //               state.news.data![index].title.toString(),
                //               style: const TextStyle(
                //                   fontWeight: FontWeight.w600, fontSize: 20),
                //             ),
                //             Padding(
                //               padding: const EdgeInsets.only(left: 110),
                //               child: Text(
                //                 state.news.data![index].createdAt.toString(),
                //                 style: const TextStyle(
                //                     color: Color.fromARGB(255, 86, 176, 250)),
                //               ),
                //             ),
                //             const Icon(Icons.navigate_next_outlined)
                //           ],
                //         )),
                //     Padding(
                //       padding: const EdgeInsets.symmetric(
                //         horizontal: 25,
                //       ),
                //       child: Column(
                //         children: [
                //           Container(
                //             height: 200,
                //             width: 380,
                //             decoration: BoxDecoration(
                //                 boxShadow: const [
                //                   BoxShadow(
                //                     blurRadius: 2,
                //                   )
                //                 ],
                //                 image: DecorationImage(
                //                     fit: BoxFit.fill,
                //                     image: NetworkImage(state
                //                         .news.data![index].img
                //                         .toString())),
                //                 borderRadius: const BorderRadius.only(
                //                   topLeft: Radius.circular(20),
                //                   topRight: Radius.circular(20),
                //                 )),
                //           ),
                //         ],
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.symmetric(
                //         horizontal: 25,
                //       ),
                //       child: Container(
                //         height: 100,
                //         width: 380,
                //         decoration: BoxDecoration(
                //             boxShadow: [
                //               BoxShadow(
                //                   blurRadius: 2,
                //                   spreadRadius: 7,
                //                   color: Colors.grey.shade200)
                //             ],
                //             color: Colors.white,
                //             borderRadius: const BorderRadius.only(
                //                 bottomLeft: Radius.circular(20),
                //                 bottomRight: Radius.circular(20))),
                //         child: Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Text(Text_titile,
                //                   style: const TextStyle(
                //                       fontWeight: FontWeight.w600,
                //                       fontSize: 20)),
                //               Row(
                //                 children: const [
                //                   Text(
                //                     "Salom hammaga mening isminim Macho",
                //                     style: TextStyle(fontSize: 12),
                //                   ),
                //                 ],
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //     const SizedBox(
                //       height: 20,
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.symmetric(
                //         horizontal: 25,
                //       ),
                //       child: Column(
                //         children: [
                //           Container(
                //             height: 200,
                //             width: 380,
                //             decoration: const BoxDecoration(
                //                 boxShadow: [
                //                   BoxShadow(
                //                     blurRadius: 2,
                //                   )
                //                 ],
                //                 image: DecorationImage(
                //                   fit: BoxFit.fill,
                //                   image: NetworkImage(
                //                       "https://static5.tgstat.ru/channels/_0/6f/6f7d56a6f98a611df952d03d657c53fd.jpg"),
                //                 ),
                //                 borderRadius: BorderRadius.only(
                //                   topLeft: Radius.circular(20),
                //                   topRight: Radius.circular(20),
                //                 )),
                //           ),
                //         ],
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.symmetric(
                //         horizontal: 25,
                //       ),
                //       child: Container(
                //         height: 100,
                //         width: 380,
                //         decoration: BoxDecoration(
                //             boxShadow: [
                //               BoxShadow(
                //                   blurRadius: 2,
                //                   spreadRadius: 7,
                //                   color: Colors.grey.shade200)
                //             ],
                //             color: Colors.white,
                //             borderRadius: const BorderRadius.only(
                //                 bottomLeft: Radius.circular(20),
                //                 bottomRight: Radius.circular(20))),
                //         child: Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Text(Text_titile1,
                //                   style: const TextStyle(
                //                       fontWeight: FontWeight.w600,
                //                       fontSize: 20)),
                //               Row(
                //                 children: const [
                //                   Text(
                //                     "Slom hammaga meni ismim Macho",
                //                     style: TextStyle(fontSize: 12),
                //                   ),
                //                 ],
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // );
                else {
                  return const SizedBox();
                }
              }),
            ),
          )),
    );
  }
}
