# ubuntuのCMDが/bin/bashとなっているから -itモードで対話モードになる。
FROM ubuntu:latest 

# -q,--quiet	実行時の進捗状況の表示を省略します。-y：yes
RUN apt-get update && apt-get install -y -q nginx 
COPY index.html /usr/share/nginx/html/
# CMD ["echo","use CMD"]
ENV dir=/host/abc
WORKDIR $dir
ADD index.html ../
RUN pwd # /host/abc/xyz