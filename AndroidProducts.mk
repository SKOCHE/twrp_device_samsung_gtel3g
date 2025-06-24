# Определение make-файлов продуктов
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_gtel3g.mk

# Выбор возможных вариантов компиляции
COMMON_LUNCH_CHOICES += \
    twrp_gtel3g-userdebug
