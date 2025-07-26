tack Debugging - ApacheBench

This project focuses on identifying and fixing issues in a web server stack (Nginx) under high load. Initially, ApacheBench reported a high number of failed requests. By analyzing logs and response content, the root cause was found to be a missing or misconfigured default index page.

The fix ensures that valid content exists at `/var/www/html/index.html`, which reduces failed HTTP requests to zero.

