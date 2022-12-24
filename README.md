# Cpp-Playground
Cpp-Playground is a container with a compiler and debugger for modern C++ projects.

## Requirements
- Docker
- VS Code with [DevContainer extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) (Recommended)

## Installation
Clone this repo and open the root folder with VSCode.

Use the 'Dev Containers: Reopen in Container' command from the Command Palette (Ctrl + Shift + P).

Done! Now you can add a new file, build and debug with F5.

## Notes
The root folder of this repo will be mounted to your host OS, so any files within the folder will persist.

## Working with your project
### Goal: import your project into the container and track their changes separately. 

Run following command in the root directory (if you don't have a repo on GitHub, please create it first).

```
git submodule add git@github.com:your-id/your-repository.git
```

The project will be cloned into the current directory. You can commit and publish your changes in the cloned subdirectory.