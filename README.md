# Supermarket_django

Cualquier inquietud escribir al correo estebanfajardo1101@gmail.com

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