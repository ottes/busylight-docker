# syntax=docker/dockerfile:1
FROM python:latest

RUN cat /etc/os-release
RUN python3 -m pip install busylight-for-humans[webapi]

EXPOSE 8080

CMD ["busyserve", "-D", "-p", "8080"]
