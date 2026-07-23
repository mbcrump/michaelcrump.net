# michaelcrump.net

The dependency-free source for [michaelcrump.net](https://www.michaelcrump.net/).

The blog is built with plain HTML and CSS and hosted on GitHub Pages. It has no site generator, package manager, application runtime, or build dependency. The dark, developer-focused “Signal” design is used across the homepage, supporting pages, feed presentation, error page, and post template.

## Live site

- Primary URL: <https://www.michaelcrump.net/>
- GitHub Pages URL: <https://mbcrump.github.io/michaelcrump.net/>
- Custom-domain configuration: `public/CNAME`

## Repository structure

- `public/` contains everything deployed to the website.
- `drafts/` contains unpublished Markdown drafts and is never deployed.
- `templates/post.html` is the starting point for new posts.
- `AGENTS.md` contains the publishing workflow used by Codex.

## Publishing

Pushes to `main` run `.github/workflows/pages.yml`, which publishes the contents of `public/` to GitHub Pages. New posts must also be added to the homepage, archive, Atom feed, and sitemap as described in [`AGENTS.md`](AGENTS.md).

## Analytics

Google Analytics 4 is enabled with Measurement ID `G-Z05L3LVJVZ`. The tag is included on every published HTML page and in the post template so future posts are tracked automatically.
