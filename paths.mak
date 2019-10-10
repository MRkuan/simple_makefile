# 设置头文件路径（相对路径）
INCLUDED := -I../../AMP/cfg \
            -I../../AMP/core \
            -I../../AMP/drive \
            -I../../AMP/inc \
            -I../../AMP/port
 
# 设置 cfg 文件路径
CFG_PATH = ../../AMP/cfg       

# 设置 core 文件路径
CORE_PATH = ../../AMP/core   

# 设置 drive 文件路径
DRIVE_PATH = ../../AMP/drive   

# 设置 inc 文件路径
INC_PATH = ../../AMP/inc  

# 设置 port 文件路径
PORT_PATH = ../../AMP/port   
 
# 设置 生成 路径 
SRC_PATH = ./


# 加载源文件
SRC_LIST := $(join $(CORE_PATH),/AMP.c )
SRC_LIST += $(join $(DRIVE_PATH),/TDA7388.c)
SRC_LIST += $(join $(DRIVE_PATH),/TDF8541.c)
SRC_LIST += $(join $(PORT_PATH),/AMP_Port.c)
