FROM node:6.12.2
MAINTAINER svd <stretovich@vicman.com>



# Let the conatiner know that there is no tty
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y install apt-transport-https
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
 

# Update base image
# Add sources for latest nginx
# Install software requirements
RUN apt update && \
apt install -y --force-yes \
        yarn \
        vim  


RUN npm install -g bower


