#!/bin/bash

ROUTER_IP="192.168.0.1"
OUTPUT_FILE="ping_results.txt"

echo "Проверяем подключение к роутеру..."

ping -c 10 $ROUTER_IP > $OUTPUT_FILE

echo "Результаты записаны в $OUTPUT_FILE"
