import 'package:project/models/category.dart';
import 'package:project/repositories/repository.dart';

class CategoryService {
  late repository _repository;

  CategoryService() {
    _repository = repository();
  }

  saveCategory(Category category) async {
    return await _repository.insertData("category", category.categoryMap());
  }
}
