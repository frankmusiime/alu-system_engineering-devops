# 0-nginx_likes_port_80

This project is a basic system administration task designed to ensure that an Ubuntu server (or container) has Nginx installed, configured correctly, and listening on port **80** of all the server’s active IPv4 IPs.

## 🛠️ Script: `0-nginx_likes_port_80`

### What It Does:
- Installs Nginx (if it's not already installed)
- Fixes broken or missing symbolic links for the default site config
- Restarts Nginx
- Verifies that Nginx is running and listening on port 80

### ✅ Requirements Met:
- Nginx is running
- Nginx is listening on port **80**
- The default site is enabled via a symbolic link

### 🧪 Test

After running the script, test with:

```bash
curl 0:80

