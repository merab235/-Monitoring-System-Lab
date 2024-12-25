#!/bin/bash

echo "Системный отчёт" > system_report.txt
echo "Дата: $(date)" >> system_report.txt
echo "" >> system_report.txt

echo "Использование процессора:" >> system_report.txt
top -l 1 | grep "CPU usage" >> system_report.txt
echo "" >> system_report.txt

echo "Состояние памяти:" >> system_report.txt
vm_stat >> system_report.txt
echo "" >> system_report.txt

echo "Использование диска:" >> system_report.txt
df -h >> system_report.txt

echo "Отчёт успешно создан в файле system_report.txt"
