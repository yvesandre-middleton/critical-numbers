from flask import (
    Blueprint, render_template
)
from ..lib import C02

data_display_bp = Blueprint('data_display', __name__)


@data_display_bp.route('/')
def index():
    c02_helper = C02()
    c02 = c02_helper.c02_levels()
    return render_template('data_display/index.html', c02=c02)

