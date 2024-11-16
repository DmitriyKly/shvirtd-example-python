import os

# Получаем значение переменной окружения DB_HOST
db_host = os.environ.get('DB_HOST', '10.10.10.10')

print(f'Подключаемся к базе данных по адресу: {db_host}')
