# melos

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

This Mason brick bootstraps a Melos project structure, supporting both monorepos and poly-repositories. Use this brick to quickly set up a multi-package workspace for your Dart and Flutter projects.

## Variables

| Variable   | Type    | Description                 | Default                |
| ---------- | ------- | --------------------------- | ---------------------- |
| `name`     | String  | Your project name           | _(Prompted)_           |
| `packages` | Array   | List of packages to include | `["packages", "apps"]` |
| `isMono`   | Boolean | Is this a monorepo?         | `true`                 |

### Variable Details

- **`name`**: The name of your project.
- **`packages`**: An array specifying the directories for your packages. Common directories include `"packages"` for reusable packages and `"apps"` for end-user applications.
- **`isMono`**: Set this to `true` if creating a monorepo structure, or `false` for a poly-repository setup.

## Usage

1. **Install Mason** (if you haven’t already):

   ```bash
   dart pub global activate mason_cli
   ```

2. **Add the Brick**:

   ```bash
   mason add melos -g
   ```

3. **Generate the Project**:
   Run the following command and follow the prompts to customize your project:
   ```bash
   mason make melos
   ```

## Notes

- This brick is helpful for initializing Melos projects with a custom directory structure.
- You may want to customize the resulting workspace in `melos.yaml` based on your project’s requirements.
