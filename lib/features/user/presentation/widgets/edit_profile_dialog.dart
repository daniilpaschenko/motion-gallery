import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../blocs/user_bloc.dart';
import '../blocs/user_event.dart';
import '../blocs/user_state.dart';

class EditProfileDialog extends StatefulWidget {
  const EditProfileDialog({super.key, required this.initialName});

  final String initialName;

  static Future<void> show(
    BuildContext context, {
    required String currentName,
  }) {
    return showDialog<void>(
      context: context,
      builder: (_) => EditProfileDialog(initialName: currentName),
    );
  }

  @override
  State<EditProfileDialog> createState() => _EditProfileDialogState();
}

class _EditProfileDialogState extends State<EditProfileDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  String? _pendingName;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName);
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _submit() {
    final currentState = context.read<UserBloc>().state;
    if (currentState is UserLoaded && currentState.isChangingUserName) return;
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final name = _nameController.text.trim();
    setState(() => _pendingName = name);
    context.read<UserBloc>().add(UserEvent.changeUserNameRequested(name));
  }

  void _onSaved(UserState state) {
    final pendingName = _pendingName;
    if (pendingName == null || state is! UserLoaded) return;
    if (state.isChangingUserName || state.userNameError != null) return;
    if (state.user.name.trim() != pendingName) return;
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final textFontSize = AppDimens.dialogTextFontSize(context);
    final titleFontSize = AppDimens.cardTitleFontSize(context);

    return BlocConsumer<UserBloc, UserState>(
      listener: (_, state) => _onSaved(state),
      builder: (context, state) {
        final isSaving = state is UserLoaded && state.isChangingUserName;
        final errorText = _pendingName != null && state is UserLoaded
            ? state.userNameError
            : null;

        return AlertDialog(
          backgroundColor: AppColors.dialogBackground,
          surfaceTintColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimens.cardRadius),
          ),
          titlePadding: const EdgeInsets.all(AppDimens.dialogPadding),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppDimens.dialogPadding,
          ),
          actionsPadding: const EdgeInsets.all(AppDimens.dialogPadding),
          actionsAlignment: MainAxisAlignment.center,
          title: Text(
            'Edit profile',
            style: TextStyle(
              fontSize: titleFontSize,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          content: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: AppDimens.dialogMaxWidth,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    key: const Key('editProfileNameField'),
                    controller: _nameController,
                    autofocus: true,
                    enabled: !isSaving,
                    maxLines: 1,
                    maxLength: AppDimens.dialogNameMaxLength,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(
                        AppDimens.dialogNameMaxLength,
                      ),
                    ],
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (_) => _submit(),
                    onChanged: (_) {
                      if (_pendingName != null) {
                        setState(() => _pendingName = null);
                      }
                    },
                    style: TextStyle(
                      fontSize: textFontSize,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: widget.initialName,
                      labelStyle: TextStyle(
                        fontSize: textFontSize,
                        color: AppColors.textSecondary,
                      ),
                      hintStyle: TextStyle(
                        fontSize: textFontSize,
                        color: AppColors.textTertiary,
                      ),
                      filled: true,
                      fillColor: AppColors.badgeSurface,
                      contentPadding: AppDimens.dialogFieldPadding,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          AppDimens.dialogFieldRadius,
                        ),
                        borderSide: BorderSide(color: AppColors.borderSoft),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          AppDimens.dialogFieldRadius,
                        ),
                        borderSide: BorderSide(color: AppColors.borderFaint),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          AppDimens.dialogFieldRadius,
                        ),
                        borderSide: BorderSide(
                          color: AppColors.primaryGradientEnd,
                        ),
                      ),
                    ),
                    validator: (value) => (value?.trim().isEmpty ?? true)
                        ? 'Enter your name'
                        : null,
                  ),
                  if (errorText != null) ...[
                    AppDimens.badgeGap,
                    Text(
                      errorText,
                      style: TextStyle(
                        fontSize: textFontSize,
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: isSaving ? null : () => Navigator.of(context).pop(),
              child: Text(
                'Cancel',
                style: TextStyle(
                  fontSize: textFontSize,
                  color: AppColors.textSecondary,
                ),
              ),
            ),
            FilledButton(
              key: const Key('editProfileSaveButton'),
              onPressed: isSaving ? null : _submit,
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.primaryGradientEnd,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimens.dialogButtonHPadding,
                  vertical: AppDimens.dialogButtonVPadding,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppDimens.pillRadius),
                ),
              ),
              child: isSaving
                  ? const SizedBox.square(
                      dimension: AppDimens.dialogProgressSize,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : Text(
                      'Save',
                      style: TextStyle(
                        fontSize: textFontSize,
                        color: Colors.white,
                      ),
                    ),
            ),
          ],
        );
      },
    );
  }
}
