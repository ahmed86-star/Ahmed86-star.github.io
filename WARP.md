# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Project Overview

This is a Jekyll-based blog using the **Chirpy theme** (v7.2+) focused on cybersecurity content. The site is a personal blog by Abdirahman Ahmed, showcasing cybersecurity walkthroughs, tutorials, and projects.

**Primary Architecture:**
- **Jekyll Static Site Generator** with Ruby/Bundler
- **Chirpy Theme** - A feature-rich Jekyll theme optimized for technical blogging
- **GitHub Pages Deployment** - Automated CI/CD via GitHub Actions
- **Development Environment** - Docker containerized with VS Code devcontainer support

## Development Commands

### Local Development (Windows/PowerShell)
```powershell
# Install Ruby dependencies
cd docs
bundle install

# Start development server (with live reload)
bundle exec jekyll serve -l --host 0.0.0.0

# Production build
JEKYLL_ENV=production bundle exec jekyll build

# Run tests
bundle exec htmlproofer _site --disable-external --ignore-urls "/^http:\/\/127.0.0.1/,/^http:\/\/0.0.0.0/,/^http:\/\/localhost/"
```

### Using Convenience Scripts (Unix/WSL)
```bash
# Start development server with options
bash tools/run.sh                    # Default: http://127.0.0.1:4000
bash tools/run.sh -H 0.0.0.0        # Bind to all interfaces
bash tools/run.sh -p                # Production mode

# Build and test site
bash tools/test.sh                   # Full build + test cycle
bash tools/test.sh -c "_config.yml"  # Specify config file
```

### Docker Development
```bash
# Use devcontainer (recommended)
# Open in VS Code with Dev Containers extension
# Container automatically installs dependencies via .devcontainer/post-create.sh
```

## Site Architecture

### Content Structure
```
docs/                           # Main Jekyll site root
├── _config.yml                # Site configuration and theme settings
├── _posts/                    # Blog posts (cybersecurity walkthroughs)
│   ├── 2024-01-21-Davie.md           # TryHackMe walkthroughs
│   ├── 2024-01-21-Publisher.md       # Web exploitation guides
│   └── ...                           # Security tutorials & labs
├── _tabs/                     # Navigation pages
│   ├── about.md              # Personal profile and skills
│   ├── categories.md         # Category taxonomy
│   ├── tags.md              # Tag taxonomy
│   └── archives.md          # Post archives
├── _data/                    # Site data files
│   ├── contact.yml           # Contact form configuration
│   └── share.yml             # Social sharing options
└── index.html                # Homepage (from theme)
```

### Theme Configuration
- **Base Theme**: `jekyll-theme-chirpy` (~> 7.2.4)
- **Features**: Dark mode, PWA support, Giscus comments, TOC, SEO optimization
- **Target Audience**: Cybersecurity professionals and students
- **Content Focus**: TryHackMe walkthroughs, security labs, penetration testing

### Deployment Pipeline
- **Trigger**: Push to `main`/`master` branches
- **Environment**: GitHub Actions Ubuntu runner
- **Build Process**: 
  1. Ruby 3.3 setup with bundle caching
  2. Dependencies installation in `docs/` directory
  3. Jekyll build with production environment
  4. HTMLProofer validation (internal links only)
  5. Deploy to GitHub Pages

## Development Guidelines

### Writing Blog Posts
- **Location**: `docs/_posts/YYYY-MM-DD-title.md`
- **Categories**: Prefer `[TryHackMe, Web Exploitation]`, `[Security Labs]`, etc.
- **Tags**: Use specific technical tags (`web`, `python`, `eval`, `privilege-escalation`)
- **Images**: Host on GitHub user-attachments or external CDN
- **Format**: Technical walkthroughs with code blocks, screenshots, and step-by-step instructions

### Site Configuration
- **Primary Config**: `docs/_config.yml` - Contains all site settings, social links, analytics
- **Comments**: Uses Giscus (GitHub Discussions) for blog comments
- **Analytics**: Configured for multiple providers (Google, GoatCounter, etc.)
- **PWA**: Enabled with offline caching capabilities

### Development Environment
- **Ruby Version**: 3.3+ (specified in GitHub Actions)
- **Bundle Path**: `vendor/bundle` (local development)
- **Live Reload**: Available via `jekyll serve -l`
- **Cross-platform**: Works on Windows (PowerShell), Linux, macOS

## Content Management

### Adding New Posts
```bash
# Create new post file
touch "docs/_posts/$(date +%Y-%m-%d)-new-post-title.md"

# Use proper front matter:
---
title: Post Title
date: 2024-01-21 00:00:00 +0000
categories: [Category1, Category2]
tags: [tag1, tag2, tag3]
image:
  path: /path/to/image.jpg
  alt: Alt text description
---
```

### Navigation Management
- **Tabs**: Edit files in `docs/_tabs/` for main navigation
- **Order**: Controlled by `order` field in front matter
- **Icons**: Uses Font Awesome icons

### Comment System
- **Provider**: Giscus (GitHub Discussions based)
- **Repository**: `ahmed86-star/ahmed86-star.github.io`
- **Configuration**: In `_config.yml` under `comments.giscus`

## Build Optimization

- **Asset Compression**: Enabled via `compress_html` settings
- **Sass**: Compressed output for production
- **Exclusions**: Tools, documentation files excluded from build
- **Caching**: Bundle caching in CI/CD, browser caching for assets