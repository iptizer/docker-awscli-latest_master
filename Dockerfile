FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3 python3-pip git
RUN git clone https://github.com/aws/aws-cli.git
RUN pip3 install aws-cli/

ENTRYPOINT "/usr/local/bin/aws"
