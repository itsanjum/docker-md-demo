FROM ubuntu:latest
#run --> command you want to run in the container/installing dependencies
RUN apt update && apt install nginx -y
WORKDIR /app
COPY main.py .
EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off:"]
# Higher prioprity than CMD, if both are present ,Entrypoint will be used and CMD will be ignored
# always harder to override
CMD ["nginx","-g","daemon off:"] 