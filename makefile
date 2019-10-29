CC = /home/lzc/tools/gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf/bin/arm-linux-gnueabihf-g++
CFLAGS  = -c -g -pipe -Wall

ftpserver:main.o CFtpServer.o
	$(CC) -o $@ $^ -lpthread	
main.o:main.cpp CFtpServer.h CFtpServerConfig.h        
	$(CC) $(CFLAGS) $< -o $@
CFtpServer.o:CFtpServer.cpp CFtpServer.h CFtpServerGlobal.h        
	$(CC) $(CFLAGS) $< -o $@	              
