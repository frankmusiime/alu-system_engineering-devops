# Debugging Apache in Docker

This project fixes a broken Docker container that runs Apache.

## Task: Give me a page!

After running the container, Apache wasn't returning any content at the root (`curl 0:8080`). This script starts Apache and creates an index page that returns:


