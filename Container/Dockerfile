FROM amazonlinux:latest

RUN yum -y install unzip aws-cli
RUN yum -y install git

RUN mkdir Scritpts

COPY ./Scritpts /home/ec2-user/Scritpts
COPY ./Scritpts/cli.bash /home/ec2-user/Scritpts

RUN chmod ugo+rwx /home/ec2-user/Scritpts/cli.bash
WORKDIR /home/ec2-user/Scritpts

#Call this script when Docker starts the container 
ENTRYPOINT ["/home/ec2-user/Scritpts/cli.bash"]