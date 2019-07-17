FROM debian:stretch

MAINTAINER Hygor X. Araújo <dev.hygor@gmail.com>

RUN useradd cy-app
WORKDIR /home/cy-app

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
  build-essential gdb-python2 python-dbg python-dev \
  python-pip python-numpy-dbg vim git

RUN git clone https://github.com/cython/cython.git
RUN cd cython && python-dbg setup.py install && cd ..

RUN pip install pygments

COPY . .

CMD bash
