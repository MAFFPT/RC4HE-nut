FROM scratch
LABEL maintainer="Marco Felicio (maffpt@gmail.com)"

# standard stuff
RUN apt-get update \
    apt-get upgrade

# nut apt packages installation 
RUN apt-get install nut nut-client nut-server

# create a soft link from the container folder /etc/nut to host folder /RP4HE/nut
RUN ln /etc/nut 

EXPOSE 3493
