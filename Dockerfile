FROM debian

RUN apt-get update && apt-get -y install git make cmake g++ gcc binutils \
                                         libx11-dev libxpm-dev libxft-dev \
                                         libxext-dev python

RUN git clone -b v6-06-00-patches http://root.cern.ch/git/root.git /opt/root/
WORKDIR /opt/root/build/
RUN bash -c "cmake .. && make install && rm -rf /opt/root/"
