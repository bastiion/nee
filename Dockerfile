FROM frekele/ant:latest

COPY . /root

RUN ant get-deps && \
    ant compile && \
    ant jar

VOLUME "/root/repository"

