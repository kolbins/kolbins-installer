#!/bin/bash

# Клонируем репозитории 
git clone git@github.com:kolbins/kolbins-template.git app
git clone git@github.com:kolbins/kolbins-admin.git admin
git clone git@github.com:kolbins/kolbins-server.git server

# Устанавливаем везде зависимости
cd app && yarn
cd ../admin && yarn
cd ../server && yarn

# Удаляем гит репозиторий в app и инициализируем новый
cd ../app && rm -rf .git && git init

# Сообщаем об успешной операции
echo "Проект готов к работе"

