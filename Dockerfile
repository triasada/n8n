FROM n8nio/n8n:latest

USER root

# Install Python, pip, ffmpeg, dan gTTS
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    ffmpeg \
 && pip3 install gTTS \
 && apt-get clean

USER node
