# dwelling
## Prerequisites
* Python 3
  * pip
  * virtualenvwrapper 
* git
* docker
* sql (MySQL, postgres...)

## Install
I hardly recommend to install [virtualenvwrapper](http://virtualenvwrapper.readthedocs.io/en/latest/command_ref.html)
```bash
$ mkvirtualenv -p python3 bl4ckpr15m
$ pip install -r requirements.txt
```
## Run
```bash
$ python manage.py runserver 0.0.0.0:8000
```
## Structure
```bash
.
├── bl4ckpr15m
│   ├── __init__.py
│   ├── local_settings.py
│   ├── __pycache__
│   │   ├── __init__.cpython-35.pyc
│   │   ├── local_settings.cpython-35.pyc
│   │   ├── settings.cpython-35.pyc
│   │   ├── urls.cpython-35.pyc
│   │   └── wsgi.cpython-35.pyc
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── ctf
│   ├── admin.py
│   ├── apps.py
│   ├── __init__.py
│   ├── migrations
│   │   ├── __init__.py
│   │   └── __pycache__
│   │       └── __init__.cpython-35.pyc
│   ├── models.py
│   ├── __pycache__
│   │   ├── admin.cpython-35.pyc
│   │   ├── __init__.cpython-35.pyc
│   │   └── models.cpython-35.pyc
│   ├── tests.py
│   └── views.py
├── manage.py
└── requirements.txt
```
## bl4ckpr15m/local_settings.py
```python
from .settings import os, BASE_DIR


# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = ''

# Database
# https://docs.djangoproject.com/en/1.11/ref/settings/#databases
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}

STATIC_URL = '/static/'
MEDIA_URL = '/media/'

# STATICFILES_DIRS = (
        # os.path.join(BASE_DIR, 'compass/out'),
        # )
STATIC_ROOT = os.path.join(BASE_DIR, 'static')
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')

```
