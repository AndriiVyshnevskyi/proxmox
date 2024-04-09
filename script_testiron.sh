#!/bin/bash

# Создаем файл
echo "create file..."
touch testiron.txt &&
sleep 3 &&

# Переменная
echo "name file..."
output_file="testiron.txt"
sleep 3 &&

# Дописывание
echo "move..."
> $output_file
sleep 3 &&

# Тест процессора
echo "Тестируем процессор..."
echo "scale=5000; a(1)*4" | bc -l >> $output_file

# Тест памяти
echo "Тестируем память..."
dd if=/dev/zero of=/dev/null bs=1M count=10240 >> $output_file

# Тест диска
echo "Тестируем диск..."
dd if=/dev/zero of=/tmp/testfile bs=1M count=1024 conv=fdatasync >> $output_file

# Тест сети
echo "Тестируем сеть..."
ping -c 5 google.com >> $output_file

echo "speed test..."
speedtest-cli >> $output_file

echo "test memory..."
df -h >> $output_file

echo "test ozu..."
free -h >> $output_file

echo "delete file..."
rm /tmp/testfile

echo "Тестирование завершено."
