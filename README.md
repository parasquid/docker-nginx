Creates an nginx docker base image suitable for building various other services on. The base image is designed to be for development use only, and is not tuned nor hardened. It is not suitable for production environments.

Special notes:
* the root folder that is mounted by default is /srv/www/public
* access and error logs are output to /srv/www/public as well - this allows inspection of the nginx logs without having to ssh in the container
