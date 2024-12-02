import 'package:flutter/material.dart';
import 'package:luxira/core/theming/styles.dart';
import 'package:luxira/features/home/view/widgets/suppllers_view_body.dart';

class SuppllersView extends StatelessWidget {
  const SuppllersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () => Navigator.pop(context), child: const Icon(Icons.arrow_back)),
        title: Text("Supplier Details",
            style: TextStyles.font20Semibold
                .copyWith(fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Colors.white,
      body: const SuppllersViewBody(),
    );
  }
}
