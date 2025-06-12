#!/bin/bash

rsync -a /home/user/ --include '\.*' /tmp/backup --delete
if [ $? == 0 ]; then
    logger "Скрипт $0 успешно выполнен"
else
    logger "Скрипт $0 завершился с ошибкой"
fi