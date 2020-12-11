from .base import *


DEBUG = True

ALLOWED_HOSTS = ['192.168.5.85', '127.0.0.1']

DATABASES = {
    'default': {
        #'ENGINE': 'django.db.backends.sqlite3',
        #'NAME': BASE_DIR / 'db.sqlite3',
        'ENGINE': 'django.db.backends.mysql', #'django.db.backends.sqlite3'
        'NAME': 'employee_mg', #'NAME': BASE_DIR / 'db.sqlite3'
        'USER': 'esteban',
        'PASSWORD': 'Sopra2020*-*',
        'HOST': '192.168.5.85',
        'PORT': '3306',
    }
}


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.1/howto/static-files/

STATIC_URL = '/static/'

STATICFILES_DIRS = [BASE_DIR_STATIC.child('static')]

MEDIA_URL = '/media/'
MEDIA_ROOT = BASE_DIR_STATIC.child('media')
