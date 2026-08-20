import 'package:flutter/material.dart';
import '../constants/app-colors.dart';
import '../constants/app-textstyles.dart';

// Reusable Top Back Button for Auth screens
class AuthBackButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const AuthBackButton({super.key, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Transform.translate(
        offset: const Offset(-8, 0),
        child: InkWell(
          onTap: onPressed ?? () => Navigator.of(context).maybePop(),
          borderRadius: BorderRadius.circular(50),
          child: const SizedBox(
            width: 40,
            height: 40,
            child: Icon(Icons.arrow_back, color: AppColors.textDark, size: 24),
          ),
        ),
      ),
    );
  }
}

// Reusable title & subtitle header widget for Auth screens
class AuthHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  const AuthHeader({super.key, required this.title, required this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.titleLarge),
        const SizedBox(height: 8),
        Text(subtitle, style: AppTextStyles.subtitle),
      ],
    );
  }
}

// Reusable Form Input Field for Auth screens
class AuthTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  const AuthTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.suffixIcon,
    this.validator,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.inputLabel),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          style: AppTextStyles.inputText,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: AppTextStyles.inputHint,
            prefixIcon: Icon(prefixIcon, color: AppColors.iconColor, size: 20),
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.error),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.error, width: 1.5),
            ),
          ),
          validator: validator,
        ),
      ],
    );
  }
}

// Primary Burgundy Auth Action Button
class AuthPrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const AuthPrimaryButton({super.key, required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
        child: Text(text, style: AppTextStyles.buttonText),
      ),
    );
  }
}

// Horizontal Divider with "or" label in the center
class OrDivider extends StatelessWidget {
  const OrDivider({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: AppColors.borderColor)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('or', style: AppTextStyles.inputHint),
        ),
        const Expanded(child: Divider(color: AppColors.borderColor)),
      ],
    );
  }
}

// Native Custom Painter Google 'G' Logo
class GoogleLogoWidget extends StatelessWidget {
  final double size;
  const GoogleLogoWidget({super.key, this.size = 20.0});
  @override
  Widget build(BuildContext context) {
    return CustomPaint(size: Size(size, size), painter: _GoogleLogoPainter());
  }
}

class _GoogleLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double w = size.width;
    final double h = size.height;
    final Paint redPaint = Paint()
      ..color = const Color(0xFFEA4335)
      ..style = PaintingStyle.fill;
    final Paint bluePaint = Paint()
      ..color = const Color(0xFF4285F4)
      ..style = PaintingStyle.fill;
    final Paint yellowPaint = Paint()
      ..color = const Color(0xFFFBBC05)
      ..style = PaintingStyle.fill;
    final Paint greenPaint = Paint()
      ..color = const Color(0xFF34A853)
      ..style = PaintingStyle.fill;
    // Blue section
    final Path bluePath = Path()
      ..moveTo(w * 0.95, h * 0.5)
      ..cubicTo(w * 0.95, h * 0.44, w * 0.94, h * 0.38, w * 0.93, h * 0.33)
      ..lineTo(w * 0.5, h * 0.33)
      ..lineTo(w * 0.5, h * 0.52)
      ..lineTo(w * 0.76, h * 0.52)
      ..cubicTo(w * 0.75, h * 0.59, w * 0.71, h * 0.66, w * 0.64, h * 0.7)
      ..lineTo(w * 0.64, h * 0.86)
      ..lineTo(w * 0.79, h * 0.86)
      ..cubicTo(w * 0.88, h * 0.77, w * 0.95, h * 0.65, w * 0.95, h * 0.5);
    canvas.drawPath(bluePath, bluePaint);
    // Green section
    final Path greenPath = Path()
      ..moveTo(w * 0.5, h * 0.96)
      ..cubicTo(w * 0.68, h * 0.96, w * 0.83, h * 0.9, w * 0.93, h * 0.81)
      ..lineTo(w * 0.77, h * 0.69)
      ..cubicTo(w * 0.71, h * 0.73, w * 0.62, h * 0.77, w * 0.5, h * 0.77)
      ..cubicTo(w * 0.33, h * 0.77, w * 0.18, h * 0.65, w * 0.13, h * 0.5)
      ..lineTo(w * 0.03, h * 0.58)
      ..lineTo(w * 0.03, h * 0.73)
      ..cubicTo(w * 0.13, h * 0.87, w * 0.3, h * 0.96, w * 0.5, h * 0.96);
    canvas.drawPath(greenPath, greenPaint);
    // Yellow section
    final Path yellowPath = Path()
      ..moveTo(w * 0.13, h * 0.5)
      ..cubicTo(w * 0.11, h * 0.45, w * 0.1, h * 0.4, w * 0.1, h * 0.35)
      ..cubicTo(w * 0.1, h * 0.3, w * 0.11, h * 0.25, w * 0.13, h * 0.2)
      ..lineTo(w * 0.13, h * 0.04)
      ..lineTo(w * 0.03, h * 0.12)
      ..cubicTo(w * 0.01, h * 0.19, 0, h * 0.27, 0, h * 0.35)
      ..cubicTo(0, h * 0.43, w * 0.01, h * 0.51, w * 0.03, h * 0.58)
      ..lineTo(w * 0.13, h * 0.5);
    canvas.drawPath(yellowPath, yellowPaint);
    // Red section
    final Path redPath = Path()
      ..moveTo(w * 0.5, h * 0.19)
      ..cubicTo(w * 0.6, h * 0.19, w * 0.69, h * 0.22, w * 0.76, h * 0.29)
      ..lineTo(w * 0.9, h * 0.15)
      ..cubicTo(w * 0.8, h * 0.06, w * 0.66, 0, w * 0.5, 0)
      ..cubicTo(w * 0.3, 0, w * 0.13, h * 0.09, w * 0.03, h * 0.23)
      ..lineTo(w * 0.18, h * 0.35)
      ..cubicTo(w * 0.23, h * 0.26, w * 0.35, h * 0.19, w * 0.5, h * 0.19);
    canvas.drawPath(redPath, redPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Google Authentication Button with Native Vector Logo
class GoogleAuthButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const GoogleAuthButton({super.key, required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(color: AppColors.borderColor),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const GoogleLogoWidget(size: 20),
            const SizedBox(width: 12),
            Text(text, style: AppTextStyles.googleButtonText),
          ],
        ),
      ),
    );
  }
}

/// Footer Navigation Link text (e.g., Don't have an account? Sign up)
class AuthFooterLink extends StatelessWidget {
  final String promptText;
  final String actionText;
  final VoidCallback onTap;
  const AuthFooterLink({super.key, required this.promptText, required this.actionText, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(promptText, style: AppTextStyles.subtitle),
        GestureDetector(
          onTap: onTap,
          child: Text(actionText, style: AppTextStyles.linkBold),
        ),
      ],
    );
  }
}
