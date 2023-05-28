FROM openjdk:11
WORKDIR /apps
COPY . /apps

# Prevent keyboard layout selection prompt
ENV DEBIAN_FRONTEND=noninteractive

# Install X11
RUN apt-get update && apt-get install libxrender1 libxtst6 libxi6 -y

# Build 
RUN cd proj-lab-main/graphics/src && \
	javac blind-virologists/citizens/*.java blind-virologists/effects/*.java blind-virologists/items/*.java blind-virologists/main/*.java blind-virologists/map/*.java blind-virologists/views/*.java  -d ../out
	
# Run application
CMD cd proj-lab-main/graphics/out && \
	java main/Main -Djava.awt.headless=true
