import 'package:store_app/helper/api.dart';
class AllCategorisService {
  Future<List<dynamic>> getAllCategoris() async {
    List<dynamic> data =await Api().get(url:'https://fakestoreapi.com/products/categories');
    
      return data;
    }
}
