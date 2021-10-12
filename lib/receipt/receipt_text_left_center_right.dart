import 'receipt_text_style.dart';
import 'receipt_text_style_type.dart';
import 'receipt_alignment.dart';
import 'collection_style.dart';

class ReceiptTextLeftCenterRight {
  ReceiptTextLeftCenterRight(
    this.leftText,
    this.centerText,
    this.rightText, {
    this.leftTextStyle = const ReceiptTextStyle(
      type: ReceiptTextStyleType.normal,
      useSpan: true,
    ),
    this.centerTextStyle = const ReceiptTextStyle(
      type: ReceiptTextStyleType.normal,
      useSpan: true,
    ),
    this.rightTextStyle = const ReceiptTextStyle(
      type: ReceiptTextStyleType.normal,
      useSpan: true,
    ),
    this.alignment = ReceiptAlignment.center,
  });

  final String leftText;
  final String centerText;
  final String rightText;
  final ReceiptTextStyle leftTextStyle;
  final ReceiptTextStyle centerTextStyle;
  final ReceiptTextStyle rightTextStyle;
  final ReceiptAlignment alignment;

  String get html => '''
    <p class="full-width inline-block">
      <${leftTextStyle.textStyleHTML} class="left ${leftTextStyle.textSizeHtml}">$leftText</${leftTextStyle.textStyleHTML}>
      <${centerTextStyle.textStyleHTML} class="$_alignmentStyleHTML ${centerTextStyle.textSizeHtml}">$centerText</${centerTextStyle.textStyleHTML}>
      <${rightTextStyle.textStyleHTML} class="right ${rightTextStyle.textSizeHtml}">$rightText</${rightTextStyle.textStyleHTML}>
    </p>
  ''';

  String get _alignmentStyleHTML {
    if (alignment == ReceiptAlignment.left) {
      return CollectionStyle.textLeft;
    } else if (alignment == ReceiptAlignment.right) {
      return CollectionStyle.textRight;
    }
    return CollectionStyle.textCenter;
  }
}
