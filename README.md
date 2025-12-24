# joy.pm Ghost Theme

A custom Ghost CMS theme designed for [joy.pm](https://joy.pm), featuring a minimalist, terminal-inspired aesthetic.

## Description

This theme mimics the look and feel of a terminal-based text editor (like Neovim or Emacs). It prioritizes readability and simplicity, using a dark color scheme and monospaced typography to present content as if it were code or markdown in an editor.

**Version**: 0.2.0

## Features & Aesthetic

- **Terminal Look**: Dark background with syntax-highlighting style colors for headings and links.
- **Typography**: Uses **IBM Plex Mono** for a consistent code-editor feel.
- **Status Bar**: The footer mimics a vim/emacs status line showing the "file path" and mode.
- **Minimalist Layout**: Focuses purely on content with a distraction-free reading experience.
- **Tech Stack**:
    - Ghost Handlebars templates (.hbs)
    - Plain CSS (no preprocessors)
    - Font Awesome icons

## Installation

This theme is intended for personal use on joy.pm.

1. Clone the repository.
2. Validate the theme using gscan.
3. Zip the directory contents (excluding git files and node_modules).
4. Upload the zip file via Ghost Admin.

## Development

### Validation

To ensure the theme is compatible with Ghost, use `gscan`. This is the primary validation method as there are no unit tests.

```bash
npx gscan .
```

## Deployment

Deployment is automated via GitHub Actions.

- **Trigger**: Push to `main` branch.
- **Process**:
    1. Validates theme with `gscan`.
    2. Creates a zip archive.
    3. Uploads directly to the joy.pm Ghost instance via the Ghost Admin API.

## License

MIT
