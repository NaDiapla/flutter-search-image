import 'package:dartz/dartz.dart';
import 'package:flutter_search/core/error/failures.dart';
import 'package:flutter_search/data/datasources/search_image_remote_data_source.dart';
import 'package:flutter_search/data/model/search_image_model.dart';
import 'package:flutter_search/domain/entities/search_image.dart';

import '../../domain/repositories/search_image_repository.dart';
import '../../domain/usecases/get_search_image_usecase.dart';

class SearchImageRepositoryImpl extends SearchImageRepository {
  final SearchImageRemoteDataSource dataSource;

  SearchImageRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, List<SearchImage>>> getImages(Params params) async {
    try {
      final List<SearchImageModel> remoteImages = await dataSource.getImages(params);
      return Right(remoteImages.map((image) => SearchImage.fromJson(image)).toList());
    } catch(e) {
      return Left(ServerFailure());
    }
  }
}
