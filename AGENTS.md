# Repository Guidelines

## Project Structure & Module Organization
This is a marketing website for Premier Industrial Facility Solutions. The project is organized as a static site with a simple Node.js backend for local development and hosting.

- **Root Directory**: Contains all main HTML pages (e.g., `index.html`, `warehouse-sanitation.html`) and project image assets.
- **`.\src`**: Contains the source Tailwind CSS file (`tailwind.css`).
- **`.\dist`**: Contains the compiled production CSS (`styles.css`).
- **`.\server.js`**: A basic Node.js HTTP server that serves static files and handles 404 errors.

## Build, Test, and Development Commands
The project uses `npm` for managing scripts and dependencies.

- **Build CSS**: `npm run build` - Compiles `.\src\tailwind.css` to `.\dist\styles.css` using PostCSS.
- **Watch CSS**: `npm run watch` - Automatically recompiles CSS when changes are detected in source files.
- **Start Server**: `npm start` - Launches the local development server at `http://localhost:8000`.

## Coding Style & Naming Conventions
The project leverages **Tailwind CSS v3** for styling and **PostCSS** for processing.

- **Design Tokens**: Standardized brand colors are defined in `.\tailwind.config.js`:
  - `premier-blue`: `#003366`
  - `premier-primary-green`: `#00A651`
  - `premier-light-blue`: `#E6F0F7`
  - `premier-gray`: `#4A5568`
  - `premier-orange`: `#22C55E`
  - `premier-green`: `#5B8C5A`
- **Typography**: Uses the **Inter** font family as the primary sans-serif font.
- **HTML/CSS**: New pages should be added to the `content` array in `.\tailwind.config.js` to ensure Tailwind classes are correctly purged and generated.

## Testing Guidelines
There is currently no automated testing framework implemented. Manual verification of HTML pages and CSS styling is recommended after changes.

## Commit & Pull Request Guidelines
The project follows a simple commit pattern based on the initial repository state.
- **Message Format**: Use clear, descriptive summaries (e.g., "Add new service page", "Update brand colors").
- **Branching**: Direct commits to the main branch are currently observed, though feature branching is recommended for significant changes.
