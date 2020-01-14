FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3 python3-pip git
RUN git clone https://github.com/aws/aws-cli.git
RUN pip3 install aws-cli/

RUN apt-get install -y curl
RUN curl -o /usr/local/sbin/kubectl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

ENTRYPOINT "/usr/local/bin/aws"
