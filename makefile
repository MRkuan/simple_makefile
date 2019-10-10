# ref:https://blog.csdn.net/zhazhiqiang/article/details/28619267
include paths.mak
 
CC := gcc
CFLAGS := -Wall -O0 $(INCLUDED)
OBJS := $(subst .c,.o, $(SRC_LIST))
TARGET := $(SRC_PATH)/main.elf
 
.PHONY: all clean clean_all
 
all: $(TARGET)
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)
 
$(OBJS): %.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
 
clean:
	rm -fr $(OBJS) 
