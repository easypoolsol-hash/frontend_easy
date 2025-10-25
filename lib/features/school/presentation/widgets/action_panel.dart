import 'package:flutter/material.dart';

/// Right panel - Quick actions, search, filters, bulk operations
class ActionPanel extends StatelessWidget {
  const ActionPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search
            Text(
              '🔍 QUICK FIND',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search by name, roll, bus...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              onChanged: (value) {
                // TODO: Wire up search functionality
              },
            ),

            const Divider(height: 32),

            // Quick Filters
            Text(
              'Quick Filters',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            CheckboxListTile(
              title: const Text('Show only alerts'),
              value: false,
              onChanged: (value) {
                // TODO: Wire up filter
              },
              dense: true,
            ),
            CheckboxListTile(
              title: const Text('Show on campus'),
              value: true,
              onChanged: (value) {
                // TODO: Wire up filter
              },
              dense: true,
            ),
            CheckboxListTile(
              title: const Text('Show departed'),
              value: false,
              onChanged: (value) {
                // TODO: Wire up filter
              },
              dense: true,
            ),

            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Grade',
                border: OutlineInputBorder(),
              ),
              value: 'All',
              items: const [
                DropdownMenuItem(value: 'All', child: Text('All Grades')),
                DropdownMenuItem(value: '1-2', child: Text('Grade 1-2')),
                DropdownMenuItem(value: '3-5', child: Text('Grade 3-5')),
                DropdownMenuItem(value: '6-8', child: Text('Grade 6-8')),
                DropdownMenuItem(value: '9-12', child: Text('Grade 9-12')),
              ],
              onChanged: (value) {
                // TODO: Wire up filter
              },
            ),

            const Divider(height: 32),

            // Bulk Actions
            Text(
              '📤 BULK ACTIONS',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Send SMS to:',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            CheckboxListTile(
              title: const Text('All alert parents'),
              value: false,
              onChanged: (value) {
                // TODO: Wire up bulk SMS
              },
              dense: true,
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  // TODO: Wire up SMS send
                },
                icon: const Icon(Icons.send),
                label: const Text('Send Message'),
              ),
            ),

            const Divider(height: 32),

            // Export
            Text(
              '📊 EXPORT',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  // TODO: Wire up export
                },
                icon: const Icon(Icons.download),
                label: const Text('Download Report'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
