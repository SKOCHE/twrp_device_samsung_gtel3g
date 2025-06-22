ifeq ($(TARGET_PREBUILT_KERNEL),)
    KERNEL_SRC :=
else
    KERNEL_SRC := $(TARGET_PREBUILT_KERNEL)
endif

ifeq ($(BOARD_PREBUILT_DT_IMAGE),)
    DTB_SRC :=
else
    DTB_SRC := $(BOARD_PREBUILT_DT_IMAGE)
endif

# Правила для копирования ядра и DTB
$(PRODUCT_OUT)/kernel: $(KERNEL_SRC)
    cp $^ $@  # Исправлено: добавлена табуляция перед cp

$(PRODUCT_OUT)/dt.img: $(DTB_SRC)
    cp $^ $@  # Исправлено: добавлена табуляция перед cp
