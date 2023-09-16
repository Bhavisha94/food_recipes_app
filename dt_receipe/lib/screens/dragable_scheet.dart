// import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
// import 'package:dt_receipe/utils/colors.dart';
// import 'package:dt_receipe/widget/bottom_recipe_details.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class DraggableSheet extends StatefulWidget {
//   const DraggableSheet({super.key});

//   @override
//   State<DraggableSheet> createState() => _DraggableSheetState();
// }

// class _DraggableSheetState extends State<DraggableSheet> {
//   final List<IconData> icons = const [
//     Icons.message,
//     Icons.call,
//     Icons.mail,
//     Icons.notifications,
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: DraggableBottomSheet(
//         minExtent: 50,
//         useSafeArea: false,
//         curve: Curves.easeIn,
//         previewWidget: _previewWidget(),
//         expandedWidget: _expandedWidget(),
//         backgroundWidget: _backgroundWidget(),
//         maxExtent: MediaQuery.of(context).size.height * 0.8,
//         onDragging: (pos) {},
//       ),
//     );
//   }

//   Widget _backgroundWidget() {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text('Draggable Bottom Sheet Example'),
//         backgroundColor: Colors.deepOrange,
//       ),
//       body: SizedBox(
//         height: 400,
//         child: ListView.separated(
//           scrollDirection: Axis.horizontal,
//           padding: const EdgeInsets.symmetric(vertical: 32),
//           itemCount: icons.length,
//           itemBuilder: (context, index) => Container(
//             height: 200,
//             width: MediaQuery.of(context).size.width * 0.7,
//             decoration: BoxDecoration(
//               color: Colors.grey,
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Icon(icons[index], color: Colors.white, size: 60),
//           ),
//           separatorBuilder: (context, index) => const SizedBox(width: 10),
//         ),
//       ),
//     );
//   }

//   Widget _previewWidget() {
//     return Container(
//       // padding: const EdgeInsets.all(16),
//       width: MediaQuery.of(context).size.width,
//       decoration: const BoxDecoration(
//         color: Colors.pink,
//       ),
//       child: Column(
//         children: const <Widget>[
//           Text(
//             'Drag Me',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _expandedWidget() {
//     return InkWell(
//       onTap: () => _previewWidget,
//       child: Container(
//         color: ColorUtils.white,
//         child: BottomRecipeWidget(),
//       ),
//     );
//   }
// }
