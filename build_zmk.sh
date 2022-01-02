#!/bin/bash

ZMK_DIR=/home/chgeuer/zmk/app
ZMK_CONFIG=/home/chgeuer/zmk-config/config
DROP_DIR=/mnt/c/Users/chgeuer/Downloads


cd "${ZMK_DIR}" || exit

SHIELD=nice_nano_v2

side="left"

west build -b "${SHIELD}" -d "build/${side}" -- -DZMK_CONFIG="${ZMK_CONFIG}" -DSHIELD="corne_${side}"
mv "${ZMK_DIR}/build/${side}/zephyr/zmk.uf2" "${DROP_DIR}/${side}.uf2"

side="right"

west build -b "${SHIELD}" -d "build/${side}" -- -DZMK_CONFIG="${ZMK_CONFIG}" -DSHIELD="corne_${side}"
mv "${ZMK_DIR}/build/${side}/zephyr/zmk.uf2" "${DROP_DIR}/${side}.uf2"
