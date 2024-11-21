  GNU nano 6.2                                                 scrypt01 *                                                        
#!/bin/bash

REPO_URL="git@github.com:DmitriyKly/shvirtd-example-python.git"
PROJECT_DIR="/opt"

echo "Клонирование репозитория..."
cd "$PROJECT_DIR" && git pull "$REPO_URL" && git clone "$REPO_URL"

echo "Переход в каталог проекта"
cd "$PROJECT_DIR" || { echo "Не удалось перейти в каталог проекта"; exit 1; }
echo "сборка,запуск"
docker build -t python . && docker run -d -p 5000:5000 --name python -e TEST_STRING="Netology" netology
