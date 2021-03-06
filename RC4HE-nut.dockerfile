FROM scratch
LABEL maintainer="Marco Felicio (maffpt@gmail.com)"

# be sure to have apt packages up-to-date
RUN apt-get update \
    apt-get upgrade

# nut apt packages installation 
RUN apt-get install nut nut-client nut-server

# redirect container's /etc/nut to be accessed by host
# this is where nut config files will be stored and updated with this specific nut configuration settings
WRKDIR "/etc/nut"


EXPOSE 3493
