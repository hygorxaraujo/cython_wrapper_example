docker build -t cython_debug .
docker run -it --name cy_debug --cap-add=SYS_PTRACE --security-opt seccomp=unconfined cython_debug bash
docker cp ~/PycharmProjects/master-ufjf-ci/ cy_debug:/home/cy-app
