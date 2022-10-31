import 'firebase_options.dart';
import 'package:soar_quest/soar_quest.dart';

void main() async {
  await SQApp.init("Afro Kiva",
      firebaseOptions: DefaultFirebaseOptions.currentPlatform);
  SQApp.run(SQNavBar([Screen("Test Screen 1"), Screen("Test Screen 2")]));
}
