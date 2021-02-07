import os
import json

from flask import Flask
from .blueprints import *


def create_app(test_config=None):

    site_root = os.path.realpath(os.path.dirname(__file__))

    app = Flask(__name__, instance_relative_config=True)
    app.config.from_mapping(
        SECRET_KEY='dev'
    )
    if test_config is None:
        # load the instance config, if it exists, when not testing
        app.config.from_pyfile('config.py', silent=True)
    else:
        # load the test config if passed in
        app.config.from_mapping(test_config)
    # ensure the instance folder exists
    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass

    app.register_blueprint(data_display_bp)
    app.add_url_rule('/', endpoint='index')

    return app

