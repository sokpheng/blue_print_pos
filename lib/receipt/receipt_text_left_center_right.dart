import 'receipt_text_style.dart';
import 'receipt_text_style_type.dart';

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
  });

  final String leftText;
  final String centerText;
  final String rightText;
  final ReceiptTextStyle leftTextStyle;
  final ReceiptTextStyle centerTextStyle;
  final ReceiptTextStyle rightTextStyle;

  String get html => '''
    <p class="full-width inline-block">
      <${leftTextStyle.textStyleHTML} class="left ${leftTextStyle.textSizeHtml}">$leftText</${leftTextStyle.textStyleHTML}>
      <${centerTextStyle.textStyleHTML} class="center ${centerTextStyle.textSizeHtml}">$centerText</${centerTextStyle.textStyleHTML}>
      <${rightTextStyle.textStyleHTML} class="right ${rightTextStyle.textSizeHtml}">$rightText</${rightTextStyle.textStyleHTML}>
    </p>
  ''';
}
