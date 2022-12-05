import 'package:app_gestion_camaroneras/core/network/dio_client.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void load() {
    //NETWORK
    Get.put<DioClient>(DioClient());

    //STORAGE
    //Get.put<FlutterSecureStorage>(const FlutterSecureStorage());

    //PROVIDERS
    /*  Get.put<AuthProvider>(AuthProvider());
    Get.put<UserProvider>(UserProvider());
    Get.put<ContributionProvider>(ContributionProvider());
    Get.put<CreditProvider>(CreditProvider());
    Get.put<SavingProvider>(SavingProvider());
    Get.put<SolidarityProvider>(SolidarityProvider()); */

    //REPOSITORIES
    /* Get.put<AuthRepository>(AuthRepository());
    Get.put<UserRepository>(UserRepository());
    Get.put<ContributionRepository>(ContributionRepository());
    Get.put<CreditRepository>(CreditRepository());
    Get.put<SavingRepository>(SavingRepository());
    Get.put<SolidarityRepository>(SolidarityRepository()); */
  }
}
