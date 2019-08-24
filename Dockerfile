FROM scratch
ADD CentOS-7-20140625-x86_64-docker_01.img.tar.xz  LABEL name="CentOS Base Image"
ADD snes9x /tmp/snes9x
ADD DonkeyKongCountry2DiddysKongQuest.zip /tmp/DonkeyKongCountry2DiddysKongQuest.zip
RUN yum install -y  libX11-devel
RUN yum install -y  xauth
RUN yum install -y libpng
RUN yum install -y openssh openssh-server openssh-clients openssl-libs
#CMD ["xhost + 127.0.0.1"]
#ENTRYPOINT ["/tmp/snes9x", "/tmp/DonkeyKongCountry2DiddysKongQuest.zip"]
CMD ["sleep","3600"]
