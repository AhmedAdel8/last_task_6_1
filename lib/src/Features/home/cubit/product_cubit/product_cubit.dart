import 'package:bloc/bloc.dart';
import 'package:last_task_6_1/src/Features/product_model/model/product_data.dart';
import 'package:last_task_6_1/src/Features/product_model/model/product_model.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  final ProductData productData = ProductData();
  getProductDataCubit() async {
    emit(ProductLoading());
    var response = await productData.getDataProduct();
    emit(ProductSuccess(model: response));
  }
}
