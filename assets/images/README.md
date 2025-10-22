# EasyPool Logo Assets

## Adding Company Logo

To add your company logo to the app:

1. **Add your logo image** to this directory as `logo.png`
   - Recommended size: 128x128 pixels or larger (square aspect ratio)
   - Format: PNG with transparent background preferred
   - File name: `logo.png` (exactly this name)

2. **Supported formats**: PNG, JPG, JPEG, GIF, WebP

3. **The app will automatically**:
   - Load `assets/images/logo.png` if it exists
   - Fall back to a **school icon** (🎓) if the logo file is missing
   - Scale the logo appropriately for different screen sizes

## Current Fallback

If no logo is provided, the app shows a blue school icon (🎓) instead of the previous bus icon. This is more appropriate for an educational institution.

## Logo Usage

The logo appears in:

- **Home Screen**: App bar (40x40 pixels)
- **Fleet Map Screen**: App bar (32x32 pixels)
- **Future screens**: Will use the same pattern

## Example Logo Requirements

- **Square format** (1:1 aspect ratio) works best
- **High resolution** (at least 256x256 pixels) for crisp display
- **Transparent background** for best integration with app themes
- **Simple design** that scales well to small sizes

## File Structure

```text
assets/
  images/
    logo.png          ← Your company logo goes here
    README.md         ← This file
```