ng Apache 500 Error with strace and Automating the Fix with Puppet

## Project Overview

This task demonstrates how to troubleshoot a 500 Internal Server Error returned by Apache using `strace`, identify the root cause, and apply a fix using Puppet.

### Objective:
- Use `strace` to trace system calls made by the Apache process and identify missing files or misconfigurations causing the 500 error.
- Apply the fix using a Puppet manifest instead of a manual Bash script.

## Files

- `0-strace_is_your_friend.pp`: Puppet manifest that ensures the required file(s) (e.g., `index.php` or `wp-config.php`) exist in the appropriate directory to resolve the Apache 500 error.

## Tools Used

- `strace`: To trace system calls and find the root cause of the Apache error.
- `puppet`: To automate the fix.
- `curl`: To verify HTTP responses.
- `tmux`: (Optional) To run parallel commands.

## Steps to Reproduce & Fix

1. **Reproduce the Error:**
   ```bash
   curl -sI 127.0.0.1
