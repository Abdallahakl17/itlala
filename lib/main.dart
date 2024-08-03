 
import 'package:itlala/app.dart';
import 'package:itlala/core/network/api_helper.dart';
import 'package:itlala/presentation/imports.dart';
 
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ApiHelper.init();
  runApp(MyApp());
}
