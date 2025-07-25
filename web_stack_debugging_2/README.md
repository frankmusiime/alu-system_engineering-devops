# Run Command as Another User

This project includes a simple Bash script that demonstrates the use of privileged execution in Linux.

## Task: 0-iamsomeoneelse

The goal of this task is to safely run the `whoami` command as another user without switching users entirely.

### Script: `0-iamsomeoneelse`

This script:
- Accepts **one argument** (the username).
- Runs `whoami` as that user using `sudo -u`.

### Requirements
- Script must start with a proper shebang: `#!/usr/bin/env bash`
- Second line must be a comment explaining what the script does.
- Script must pass **ShellCheck**.
- Must be executable: `chmod +x 0-iamsomeoneelse`

### Usage

```bash
./0-iamsomeoneelse <username>

