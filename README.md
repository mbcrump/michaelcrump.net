# MichaelCrump.net

The new, dependency-free source for [MichaelCrump.net](https://www.michaelcrump.net/).

The site is plain HTML and CSS deployed directly to GitHub Pages. There is no site generator, package manager, or application runtime. Finished website files live in `public/`; drafts and authoring instructions stay outside the deployed artifact. Future posts are intended to be written and published with Codex by following [`AGENTS.md`](AGENTS.md).

The approved visual design is the dark, developer-focused “Signal” theme, applied consistently to the homepage, supporting pages, feed presentation, error page, and post template.

## Preview

Until the custom domain is moved, the site is available at:

<https://mbcrump.github.io/michaelcrump.net/>

## Publishing

Pushes to `main` deploy through `.github/workflows/pages.yml`. Drafts live in `drafts/` and are not linked from the published site.
