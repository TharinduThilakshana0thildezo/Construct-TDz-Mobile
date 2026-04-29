import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class PostNewProjectScreen extends StatefulWidget {
  const PostNewProjectScreen({super.key});

  @override
  State<PostNewProjectScreen> createState() => _PostNewProjectScreenState();
}

class _PostNewProjectScreenState extends State<PostNewProjectScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isSaving = false;

  String _projectType = 'Commercial Development';
  String _district = 'Colombo';
  String _budgetLkr = '';
  String _timelineMonths = '6 Months';
  String _description = '';
  final List<PlatformFile> _pickedFiles = [];

  Future<void> _pickFiles() async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: const ['pdf', 'dwg', 'jpg', 'jpeg', 'png'],
    );
    if (result != null) {
      setState(() => _pickedFiles.addAll(result.files));
    }
  }

  Future<void> _submit({required bool asDraft}) async {
    if (!(_formKey.currentState?.validate() ?? false)) {
      return;
    }

    setState(() => _isSaving = true);
    try {
      final id = FirebaseFirestore.instance.collection('projects').doc().id;
      final uid = FirebaseAuth.instance.currentUser?.uid;

      final attachments = await _uploadAttachments(id);

      await FirebaseFirestore.instance.collection('projects').doc(id).set({
        'projectId': id,
        'clientId': uid,
        'title': '${_projectType.split(' ').first} Project',
        'projectType': _projectType,
        'district': _district,
        'budgetLkr': int.tryParse(_budgetLkr.replaceAll(',', '')),
        'timelineMonths': int.tryParse(_timelineMonths.split(' ').first),
        'description': _description,
        'attachments': attachments,
        'status': asDraft ? 'draft' : 'active',
        'progressPercent': 0,
        'createdAt': FieldValue.serverTimestamp(),
        'updatedAt': FieldValue.serverTimestamp(),
      });

      if (!mounted) return;
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            asDraft
                ? 'Draft saved with your project details and files.'
                : 'Project submitted successfully and is ready for bids.',
          ),
        ),
      );
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not save your project: $e')),
        );
      }
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }

  Future<List<Map<String, dynamic>>> _uploadAttachments(
    String projectId,
  ) async {
    if (_pickedFiles.isEmpty) return const [];
    final storage = FirebaseStorage.instance;
    final results = <Map<String, dynamic>>[];

    for (final file in _pickedFiles) {
      final path = file.path;
      if (path == null) continue;
      final fileObj = File(path);
      final storagePath = 'projects/$projectId/attachments/${file.name}';

      final ref = storage.ref(storagePath);
      final taskSnapshot = await ref.putFile(fileObj);
      final downloadUrl = await taskSnapshot.ref.getDownloadURL();

      results.add({
        'name': file.name,
        'storagePath': storagePath,
        'downloadUrl': downloadUrl,
        'sizeBytes': file.size,
      });
    }
    return results;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new, size: 18),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: const Text('Post New Project', style: TextStyle(fontSize: 16)),
      centerTitle: true,
    ),
    body: SafeArea(
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Project Details',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Provide technical specifications and site location for accurate bidding.',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 32),
              _buildDropdown(
                context: context,
                label: 'Project Type',
                value: _projectType,
                items: [
                  'Commercial Development',
                  'Residential',
                  'Infrastructure',
                ],
                onChanged: (v) => setState(() => _projectType = v!),
              ),
              const SizedBox(height: 16),
              _buildDropdown(
                context: context,
                label: 'District',
                value: _district,
                items: ['Colombo', 'Gampaha', 'Kandy', 'Galle'],
                onChanged: (v) => setState(() => _district = v!),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _buildTextField(
                      context: context,
                      label: 'Budget (LKR)',
                      hint: 'Estimated',
                      onChanged: (v) => setState(() => _budgetLkr = v),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildDropdown(
                      context: context,
                      label: 'Timeline',
                      value: _timelineMonths,
                      items: [
                        '3 Months',
                        '6 Months',
                        '12 Months',
                        '18+ Months',
                      ],
                      onChanged: (v) => setState(() => _timelineMonths = v!),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Text(
                'Architectural Drawings',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: _pickFiles,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardTheme.color,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: const Color(0xFFE5A824).withValues(alpha: 0.5),
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.cloud_upload_outlined,
                        color: Color(0xFFE5A824),
                        size: 40,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Tap to upload files',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'PDF, DWG Max 50MB',
                        style: TextStyle(
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withAlpha(138),
                          fontSize: 12,
                        ),
                      ),
                      if (_pickedFiles.isNotEmpty) ...[
                        const SizedBox(height: 16),
                        Wrap(
                          spacing: 8,
                          children: _pickedFiles
                              .map(
                                (f) => Chip(
                                  label: Text(
                                    f.name,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onSurface,
                                    ),
                                  ),
                                  backgroundColor:
                                      Theme.of(context).dividerTheme.color ??
                                      Colors.transparent,
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              _buildTextField(
                context: context,
                label: 'Detailed Description',
                hint: 'Describe the scope of work, material preferences...',
                maxLines: 4,
                onChanged: (v) => setState(() => _description = v),
              ),
              const SizedBox(height: 40),
              FilledButton(
                onPressed: _isSaving ? null : () => _submit(asDraft: false),
                child: _isSaving
                    ? SizedBox(
                        height: 18,
                        width: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color:
                              Theme.of(context)
                                  .filledButtonTheme
                                  .style
                                  ?.foregroundColor
                                  ?.resolve({}) ??
                              Colors.black,
                        ),
                      )
                    : const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Submit Project'),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward, size: 16),
                        ],
                      ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: _isSaving ? null : () => _submit(asDraft: true),
                child: Text(
                  'Save as Draft',
                  style: TextStyle(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withAlpha(138),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );

  Widget _buildDropdown({
    required BuildContext context,
    required String label,
    required String value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
          fontSize: 13,
        ),
      ),
      const SizedBox(height: 8),
      DropdownButtonFormField<String>(
        initialValue: items.contains(value) ? value : null,
        items: items
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            )
            .toList(),
        onChanged: onChanged,
        dropdownColor: Theme.of(context).cardTheme.color,
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
        ),
        decoration: InputDecoration(
          hintText: 'Select...',
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.onSurface.withAlpha(61),
          ),
        ),
      ),
    ],
  );

  Widget _buildTextField({
    required BuildContext context,
    required String label,
    required String hint,
    required ValueChanged<String> onChanged,
    int maxLines = 1,
    TextInputType? keyboardType,
  }) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
          fontSize: 13,
        ),
      ),
      const SizedBox(height: 8),
      TextFormField(
        maxLines: maxLines,
        keyboardType: keyboardType,
        style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.onSurface.withAlpha(61),
          ),
        ),
        onChanged: onChanged,
        validator: (value) {
          final text = (value ?? '').trim();
          if (label.startsWith('Budget')) {
            if (text.isEmpty) return 'Budget is required';
            if (int.tryParse(text.replaceAll(',', '')) == null) {
              return 'Enter a valid amount';
            }
          }
          if (label.startsWith('Detailed')) {
            if (text.isEmpty) return 'Description is required';
            if (text.length < 20) return 'Add a bit more detail';
          }
          return null;
        },
      ),
    ],
  );
}
