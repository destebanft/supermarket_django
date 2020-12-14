# Supermarket_django

Cualquier inquietud escribir al correo estebanfajardo1101@gmail.com

## Base de datos
En el repositorio queda el archivo supermarket_db.sql, importarlo en mariaDB. Si tiene una configuración por defecto diferente a la MariaDB recuerde modificar el documento settings/local.py

- Server: Localhost via UNIX socket
- Server type: MariaDB
- Server version: 10.4.17-MariaDB - Source distribution
- Protocol version: 10
- User: root
- Server charset: UTF-8 Unicode (utf8mb4)

## Correr el proyecto en linux

1. sudo apt install python3-dev, libmysqlclient-development, virtualenv
2. virtualenv dev --python=python3
3. cd dev
4. source bin/activate
5. git clone https://github.com/destebanft/supermarket_django.git
6. cd supermarket_django
7. pip install --upgrade setuptools
8. pip install -r requeriments.txt
9. python3 manage.py runsever
10. Ingresar a http://localhost:8000/


Esta proyecto esta compuesto de 4 apliaciones

- Brands: http://localhost:8000/brands
- Deals: http://localhost:8000/Deals
- Stores: http://localhost:8000/stores
- Users: http://localhost:8000/users


## Correr el proyecto en windows (Git bash)
1. Instalar pip
2. python -m venv dev
3. cd dev
4. source Scripts/activate
5. git clone https://github.com/destebanft/supermarket_django.git
6. cd supermarket_django
7. pip install --upgrade setuptools
8. pip install -r requeriments.txt
10. py manage.py runserver
11. Ingresar a http://localhost:8000/

### Inicio de sesión

Números y códigos de prueba:

- Número: 3500000000, Código: 999999.
- Número: 3201234567, Código: 001122.
- Puede utilizar su número de teléfonp y llegara un mensaje de texto con el código.

## Usuario Administrador

- Username: desarrollo
- Password: 12345678