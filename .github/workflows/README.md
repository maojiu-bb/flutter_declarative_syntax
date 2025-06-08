# GitHub Workflows for Flutter Declarative Syntax Plugin

This directory contains GitHub Actions workflows for automating various aspects of the Flutter plugin development and maintenance process.

## Available Workflows

### 1. CI Workflow (`ci.yml`)

**Purpose**: Continuous Integration pipeline that runs on every push and pull request

**Features**:

- **Code Analysis**: Runs `flutter analyze` to catch potential issues
- **Code Formatting**: Checks code formatting with `dart format`
- **Multi-version testing**: Tests against multiple Flutter versions (3.16.0, 3.24.3, stable)
- **Coverage reporting**: Generates test coverage and uploads to Codecov
- **Example app building**: Builds the example app if it exists
- **Package health check**: Validates the package with `dart pub publish --dry-run`
- **Dependency audit**: Checks for dependency issues

**Triggers**:

- Push to `main` branches
- Pull requests to `main` branches
- Manual trigger via GitHub Actions UI

### 2. Publish Workflow (`publish.yml`)

**Purpose**: Automated publishing to pub.dev when creating releases

**Features**:

- **Pre-publish validation**: Runs all tests and checks before publishing
- **Automatic publishing**: Publishes to pub.dev when a version tag is created
- **GitHub Release**: Creates a GitHub release with changelog information
- **Security**: Uses encrypted secrets for pub.dev credentials

**Triggers**:

- Push of version tags (e.g., `v1.0.0`, `v2.1.3`)
- Manual trigger via GitHub Actions UI

**Setup Required**:
You need to add the following secret to your GitHub repository:

- `PUB_DEV_CREDENTIALS`: Base64 encoded pub.dev credentials JSON

### 3. Dependencies Check Workflow (`dependencies.yml`)

**Purpose**: Automated dependency management and security monitoring

**Features**:

- **Weekly dependency checks**: Runs every Monday at 09:00 UTC
- **Automated dependency updates**: Creates PRs for dependency updates
- **Security monitoring**: Prepares for future security audit tools
- **Pull request validation**: Checks dependencies on relevant PR changes

**Triggers**:

- Weekly schedule (Mondays at 09:00 UTC)
- Pull requests that modify `pubspec.yaml` or `pubspec.lock`
- Manual trigger via GitHub Actions UI

## Setup Instructions

### 1. Basic Setup

The workflows are ready to use once you push them to your repository. They will automatically start running based on their triggers.

### 2. Pub.dev Publishing Setup

To enable automatic publishing to pub.dev:

1. **Get pub.dev credentials**:

   ```bash
   # Login to pub.dev locally first
   dart pub login

   # Find your credentials file
   cat ~/.config/dart/pub-credentials.json

   # Encode it in base64
   base64 ~/.config/dart/pub-credentials.json
   ```

2. **Add GitHub Secret**:

   - Go to your repository Settings → Secrets and variables → Actions
   - Click "New repository secret"
   - Name: `PUB_DEV_CREDENTIALS`
   - Value: The base64 encoded credentials from step 1

3. **Create a release**:
   ```bash
   # Tag your release
   git tag v1.0.1
   git push origin v1.0.1
   ```

### 3. Codecov Integration (Optional)

To enable coverage reporting:

1. Sign up at [codecov.io](https://codecov.io)
2. Connect your GitHub repository
3. The workflow will automatically upload coverage reports

### 4. Customization

You can customize the workflows by:

- **Changing Flutter versions**: Modify the matrix in `ci.yml`
- **Adding more checks**: Add additional steps to any workflow
- **Changing triggers**: Modify the `on` section of each workflow
- **Branch protection**: Set up branch protection rules that require these checks

## Workflow Status Badges

Add these badges to your README.md to show workflow status:

```markdown
[![CI](https://github.com/yourusername/flutter_declarative_syntax/actions/workflows/ci.yml/badge.svg)](https://github.com/yourusername/flutter_declarative_syntax/actions/workflows/ci.yml)
[![Publish](https://github.com/yourusername/flutter_declarative_syntax/actions/workflows/publish.yml/badge.svg)](https://github.com/yourusername/flutter_declarative_syntax/actions/workflows/publish.yml)
[![Dependencies](https://github.com/yourusername/flutter_declarative_syntax/actions/workflows/dependencies.yml/badge.svg)](https://github.com/yourusername/flutter_declarative_syntax/actions/workflows/dependencies.yml)
```

## Best Practices

1. **Branch Protection**: Enable branch protection rules requiring CI checks to pass
2. **Code Reviews**: Require code reviews for all pull requests
3. **Semantic Versioning**: Use semantic versioning for your releases
4. **Changelog**: Keep your CHANGELOG.md up to date
5. **Testing**: Maintain good test coverage for reliable automation

## Troubleshooting

### Common Issues

1. **Workflow fails on formatting check**:

   ```bash
   dart format lib/ test/ example/
   ```

2. **Pub.dev credentials invalid**:

   - Re-run `dart pub login` and update the secret

3. **Tests failing on specific Flutter version**:

   - Check compatibility issues and update code accordingly

4. **Dependency conflicts**:
   - Run `flutter pub deps` locally to debug dependency issues

### Getting Help

- Check the Actions tab in your GitHub repository for detailed logs
- Review the workflow files for configuration issues
- Consult the [GitHub Actions documentation](https://docs.github.com/en/actions)
- Check the [Flutter CI/CD documentation](https://docs.flutter.dev/deployment/cd)

## Contributing

When contributing to this project:

1. Ensure all workflows pass before submitting PR
2. Add tests for new functionality
3. Update documentation as needed
4. Follow the existing code style and formatting
