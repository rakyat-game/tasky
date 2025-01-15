import 'package:tasky/features/domain/repositories/todos_repositories.dart';

class UploadImageUseCase {
  final TasksRepositories tasksRepositories;

  UploadImageUseCase(this.tasksRepositories);

  Future<String> uploadImage(String accessToken, String image) async {
    return await tasksRepositories.uploadImage(accessToken, image);
  }
}
