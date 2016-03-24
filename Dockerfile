FROM gitlab/gitlab-runner:latest

RUN wget -O /bin/docker https://get.docker.com/builds/Linux/x86_64/docker-1.9.1
RUN chmod +x /bin/docker

RUN adduser gitlab-runner sudo
RUN echo "gitlab-runner ALL=NOPASSWD: ALL" > /etc/sudoers.d/gitlab-runner
