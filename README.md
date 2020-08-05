The purpose of this container is to demonstrate decrypting TLS encrypted FTP traffic. The server is configured 
loosely for demonstration purposes and should not be used for production without modification to the configurat
ions.

This repo contains a Dockerfile, the proftpd.conf, tls.conf, and self signed SSL certificates.


You can run it directly from your labtop for local demonstrations. It can be run from a Docker instance in any 
IaaS.


Deployment:

Step 1 - Download the files manually or git clone https://github.com/freshdemo/ftpovertls.git

Step 2 - Build the image with; docker build . -t freshdemo/ftpovertls

Step 3 - Create the container from the image with 

docker run -p 21:21 -p 30000-30020:30000-30020 -d (image number which can be found using <docker images>)

Step 4 - Update all surrounding firewalls/acls to permit TCP port 21 and 30000-30020 (used for passive FTP)

Step 5 - A default account (phishme:phishme) is enabled. Configure your FTP client with these credentials.


From here you should be able to upload and download files. If you are decrypting traffic you will be able to see/control the file names, and block threats.

Look for tags labs and freshdemo on the intranet to find some use cases. Enjoy!
