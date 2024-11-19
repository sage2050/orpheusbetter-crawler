FROM debian:testing

WORKDIR /root
RUN apt update -y && apt install -y python3 python3-pip git mktorrent flac lame sox
RUN git clone https://github.com/sage2050/orpheusbetter-crawler

WORKDIR /root/orpheusbetter-crawler
RUN pip3 install -r requirements.txt --break-system-packages
CMD bash