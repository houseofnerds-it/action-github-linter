#################
#
# This defines the container image, which will be used to run the action
#
FROM alpine:latest


ADD entrypoint.sh /entrypoint.sh

#ENTRYPOINT ["/entrypoint.sh"]
