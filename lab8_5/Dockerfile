FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-venv \
    python3-pip && \
    apt-get clean

RUN apt-get update && apt-get install -y \
    python3 \
    python3-venv \
    python3-pip \
    git \
    wget \
    unzip \
    ca-certificates \
    chromium \
    chromium-driver \
    && apt-get clean

#create virtual environment
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

ENV CHROME_BIN=/usr/bin/chromium
ENV WEBDRIVER_CHROME_DRIVER=/usr/bin/chromedriver

RUN pip install --upgrade pip
RUN pip install robotframework robotframework-seleniumlibrary selenium

EXPOSE 8080
USER jenkins
