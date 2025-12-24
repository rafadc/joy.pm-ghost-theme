# AGENTS.md - Ghost Theme for joy.pm

This is the ghost theme I use in my blog. This theme is not meant to be published but just used by me.

It is installed in my Ghost instance at <https://joy.pm>.

## Aesthetic

The blog tries to look like a terminal based editor like neovim or emacs.

Readability is important.

## Commands

- **Validate**: `npx gscan .` - Run Ghost theme validator (required before deploy)
- **Deploy**: Automatic via GitLab CI on push to `main` branch
- **No tests** - This is a simple Ghost theme, validation via gscan only

## Stack

- Ghost CMS theme using Handlebars (.hbs templates)
- Plain CSS (no preprocessor) in `assets/css/main.css`
- Font Awesome icons via CDN, IBM Plex Mono font

## Code Style

- **Templates**: Use Ghost Handlebars helpers (`{{#foreach}}`, `{{asset}}`, `{{ghost_head}}`)
- **Partials**: Store reusable components in `partials/` folder, include with `{{> "partial-name"}}`
- **CSS**: Single file `main.css`, use hex colors, code-editor dark theme aesthetic
- **Layout**: `default.hbs` is the base layout, other templates extend it with `{{!< default}}`

## Structure

- `default.hbs` - Base layout (header, footer, ghost_head/foot)
- `index.hbs` - Homepage post listing
- `post.hbs` / `page.hbs` - Single post/page templates
- `partials/` - Reusable template fragments

## Development

- You can check that in production this is working using gh command line.
