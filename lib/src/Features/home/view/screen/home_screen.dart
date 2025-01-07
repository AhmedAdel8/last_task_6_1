import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_task_6_1/src/Features/home/cubit/product_cubit/product_cubit.dart';
import 'package:last_task_6_1/src/Features/home/view/widgets/product_card.dart';
import 'package:last_task_6_1/src/core/style/string_app.dart';
import 'package:last_task_6_1/src/core/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductSuccess) {
          return Scaffold(
            appBar: customAppBar(text: StringApp.titleappbar),
            body: ListView.builder(
              itemCount: state.model.length,
              itemBuilder: (context, index) {
                return ProductCard(productModel: state.model[index]);
              },
            ),
          );
        } else if (state is ProductFailure) {
          return Text('لا يوجد بيانات');
        } else {
          return CircularProgressIndicator(padding: EdgeInsets.all(10));
        }
      },
    );
  }
}
