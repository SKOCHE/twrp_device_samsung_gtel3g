# Явное переопределение, если переменные окружения установлены.  
# Если TARGET_PREBUILT_KERNEL существует, используем его значение, иначе остается пустая строка.
KERNEL_SRC := $(strip $(TARGET_PREBUILT_KERNEL))
DTB_SRC := $(strip $(BOARD_PREBUILT_DT_IMAGE))


# Проверка, что исходные файлы ядра и DTB существуют.  Если нет - выдаем ошибку
# stop - это функция make для остановки сборки с сообщением об ошибке.
ifndef KERNEL_SRC
$(warning "TARGET_PREBUILT_KERNEL is not defined. Kernel image will not be copied.")
endif

ifndef DTB_SRC
$(warning "BOARD_PREBUILT_DT_IMAGE is not defined. DTB image will not be copied.")
endif


# Правила для копирования ядра и DTB
$(PRODUCT_OUT)/kernel: $(KERNEL_SRC)
    @echo "Copying kernel from $(KERNEL_SRC) to $@" # Отладочный вывод
    $(if $(KERNEL_SRC), cp $(KERNEL_SRC) $@, @echo "Skipping kernel copy: KERNEL_SRC is empty") # Условное копирование

$(PRODUCT_OUT)/dt.img: $(DTB_SRC)
    @echo "Copying dt.img from $(DTB_SRC) to $@" # Отладочный вывод
    $(if $(DTB_SRC), cp $(DTB_SRC) $@, @echo "Skipping dtb copy: DTB_SRC is empty") # Условное копирование
