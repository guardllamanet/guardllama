# GuardLlama Contribution Guidelines

Thank you for your interest in contributing to GuardLlama! To ensure smooth and efficient collaboration, please follow these guidelines when submitting your contributions.

## Getting Started

1. Fork the GuardLlama repository on GitHub.
2. Clone the forked repository to your local machine.
3. Create a new branch with a descriptive name related to the feature or bugfix you plan to implement.

## Development

To get started with developing GuardLlama, you'll need to install the following prerequisites:

- [Go](https://go.dev/)
- [Flutter Web](https://docs.flutter.dev/get-started/install)
- [Docker](https://docs.docker.com/get-docker/)

After you have installed the required tools and cloned the repository to your local machine, follow these steps:

### 1. Set Up Development Instance

Run `make glm_install` to set up a development instance of GuardLlama using [k3d](https://k3d.io/). The GuardLlama API server will be accessible at `http://localhost:38080`. The VPN port range will be `31001-31005`.

### 2. Access Web UI

Navigate to the `ui` directory by running `cd ui`. Then, execute `flutter run -d chrome` to start the web UI. To log in the development instance, use the token `root`.

### Additional Development Tasks

You can also perform various tasks to build and run tests, such as `make build`, `make test` and `make e2etest`.

## Contribution Process

1. Ensure your changes follow the project's coding style and conventions.
2. Keep your commits small and focused, with clear and concise commit messages.
3. Rebase your branch frequently to incorporate any upstream changes.
4. Write and run tests to verify the functionality and performance of your changes.
5. Update the documentation as necessary to reflect your changes.
6. Ensure your changes don't introduce new bugs or break existing functionality.

## Submitting a Pull Request

1. Push your changes to your forked repository on GitHub.
2. Create a new pull request against the main GuardLlama repository.
3. Provide a clear and concise description of your changes in the pull request, including the purpose and benefits of your contribution.
4. Address any feedback or requested changes from the maintainers promptly and professionally.
5. Once your pull request is approved, it will be merged into the main repository.

## Reporting Issues

If you encounter a bug or have a feature request, please create a new issue in the GuardLlama GitHub repository. Be sure to include the following information:

1. A clear and concise description of the issue or feature request.
2. Steps to reproduce the issue, if applicable.
3. Any relevant screenshots or logs to help explain the issue.

Please search the existing issues before submitting a new one to avoid duplicates.

## Code of Conduct

As a contributor to the GuardLlama project, you are expected to treat all maintainers, contributors, and users with respect and professionalism. Harassment, discrimination, and offensive behavior will not be tolerated. Any violation of these principles may result in your removal from the project.

## Questions and Help

If you have questions or need assistance, feel free to reach out to the maintainers or join the GuardLlama community on forums or chat platforms.

By following these guidelines, you help maintain a positive and collaborative environment for the GuardLlama project. We look forward to your contributions and thank you for your support!
