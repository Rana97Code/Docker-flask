from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_mysqldb import MySQL
from flask_marshmallow import Marshmallow

app = Flask(__name__)
# Order matters: Initialize SQLAlchemy before Marshmallow
db = SQLAlchemy()
ma = Marshmallow()


mysql = MySQL(app)

app.config['SECRET_KEY'] = 'seCREtKeY'
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:''@localhost:3306/flask_app'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True

db.init_app(app)

