# OpenAPI Code Generation Workflow

## When to Regenerate API Client

⚠️ **IMPORTANT**: Only regenerate when backend API changes are deployed.

### Step-by-Step Process

1. **Backend deploys new API changes** to DEV/production
2. **Download latest schema**:
   ```bash
   curl https://api.easypool.in/docs/schema/ > openapi-schema.yaml
   ```

3. **Regenerate client**:
   ```bash
   make generate
   ```

4. **Check for breaking changes**:
   ```bash
   flutter analyze
   ```

5. **If errors occur**:
   - Review changed type names
   - Update affected files (search for error messages)
   - Run `flutter analyze` again
   - Commit ALL changes together

6. **Test locally**:
   ```bash
   flutter test
   flutter build apk --debug
   ```

7. **Create PR** with descriptive title:
   - "chore: Regenerate API client for [feature name]"
   - Include list of breaking changes in description

## Preventing Breaking Changes

✅ **DO**:
- Pin dependency versions (no `^`)
- Commit generated code to Git
- Review schema diffs before regenerating
- Test locally before pushing

❌ **DON'T**:
- Regenerate "just to see what happens"
- Use floating dependency versions
- Skip flutter analyze after regeneration
- Regenerate without backend changes

## Pinned Versions

- OpenAPI Generator: 7.14.0
- Dio: 5.7.0
- built_value: 8.10.1 (required by riverpod_generator ^3.0.0)
- built_collection: 5.1.1
- built_value_generator: 8.10.1
- build_runner: 2.4.13

**Update these only when necessary** (security fixes, critical bugs).

## Why These Versions?

We use **built_value** (not json_serializable) for API client generation:
- More stable for code generation
- Better null-safety support
- Immutable value types by default
- Works reliably with dart-dio generator

**Note**: The dart-dio generator ALWAYS uses built_value regardless of config settings.

## Troubleshooting

### "PaginatedStudentListList" errors

Backend schema hook should fix this automatically. If you see these errors:
1. Backend needs to regenerate schema with fix_model_names hook
2. Frontend will need one more regeneration after backend fix

### Dependency version conflicts

All versions are pinned. If `flutter pub get` fails:
1. Check pubspec.yaml for any `^` symbols
2. Ensure all dependencies match the pinned versions above
3. Delete `pubspec.lock` and run `flutter pub get` again

### Build errors after regeneration

1. Run `flutter analyze` to see all errors
2. Most errors are type name changes - update them
3. Some errors are method signature changes - update call sites
4. Commit ALL fixes together with regenerated code
