from .base import *
import firebase_admin
from firebase_admin import credentials



DEBUG = True

ALLOWED_HOSTS = []

DATABASES = {
    'default': {
        #'ENGINE': 'django.db.backends.sqlite3',
        #'NAME': BASE_DIR / 'db.sqlite3',
        'ENGINE': 'django.db.backends.mysql', #'django.db.backends.sqlite3'
        'NAME': 'supermarket_db', #'NAME': BASE_DIR / 'db.sqlite3'
        'USER': 'root',
        'PASSWORD': '',
        'HOST': '127.0.0.1',
        'PORT': '3306',
    }
}


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.1/howto/static-files/

STATIC_URL = '/static/'
STATICFILES_DIRS = [BASE_DIR_STATIC.child('static')]

MEDIA_URL = '/media/'
MEDIA_ROOT = BASE_DIR_STATIC.child('media')


cred = credentials.Certificate("fbkey.json")
firebase_admin.initialize_app(cred)
