from flask import (
    Blueprint, render_template
)


data_display_bp = Blueprint('data_display', __name__)


@data_display_bp.route('/')
def index():
    return render_template('data_display/index.html')

