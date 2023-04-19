FROM python:3.8-slim-buster
ARG USERNAME=app_runner
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \
    && apt-get install libpq-dev gcc  -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME
WORKDIR /app
COPY ./app/requirement.txt requirement.txt
RUN pip3 install -r requirement.txt
COPY ./app /app
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]

