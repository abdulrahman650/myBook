import 'package:bookly/core/function/custom_snack_barr.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      CustomSnackBar(context, 'Cannot Launch $url');
    }
  }
}
