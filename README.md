# Example of using VSCode-ObjectScript with multiple connections at once

Before start just start docker-compose environment with this command in the root of the project

```SHELL
docker-compose up -d --build
```

Then open multi.code-workspace with VSCode
When you swithc between files VSCode-ObjectScript switch connection as well.

![Switch Connection](https://raw.githubusercontent.com/caretdev/vscode-multi-connection/master/images/switch.gif)

Explorer view shows both connections at once.

![Explorer View](https://raw.githubusercontent.com/caretdev/vscode-multi-connection/master/images/explorer.png)
