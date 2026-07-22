# Codex instructions for MichaelCrump.net

This repository is a dependency-free static blog hosted on GitHub Pages.

## Architecture

- Use plain HTML and CSS only.
- Do not introduce Jekyll, Node.js, a package manager, a JavaScript framework, or a build step unless Michael explicitly requests it.
- Keep `.nojekyll` in the repository root.
- Use relative links so the site works both at the temporary GitHub Pages project URL and at `https://www.michaelcrump.net/`.
- Keep the site accessible, responsive, and usable without JavaScript.

## Publishing a post

When Michael asks to publish a post:

1. Create `posts/<slug>/index.html` using the structure and classes from an existing post. Until one exists, use `post-template.html` as the source template.
2. Replace every placeholder, including title, description, publication date, canonical URL, and article body.
3. Add the post to the top of the “Latest writing” list in `index.html`.
4. Add the post to the top of the list in `archive.html`.
5. Add a complete Atom `<entry>` to `feed.xml` and update the feed-level `<updated>` timestamp.
6. Add the canonical post URL to `sitemap.xml` and update relevant `<lastmod>` values.
7. Remove the corresponding file from `drafts/` if the post originated there.
8. Validate local links, HTML structure, and XML before committing.

Use ISO 8601 dates in metadata and readable dates in page copy. Canonical URLs should use `https://www.michaelcrump.net/` even while the site is being previewed on GitHub Pages.

## Drafts

- Store drafts as Markdown in `drafts/`.
- Drafts are source material and must not be linked from the published site.
- Do not add drafts to the feed or sitemap.

## Site-wide edits

Keep navigation and footer markup consistent across all HTML pages. If either changes, update every page and `post-template.html` in the same commit.

