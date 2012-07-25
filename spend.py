from flask import Flask
from flask.ext.sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://localhost/chispend'
app.config.from_object(__name__)        
db = SQLAlchemy(app)


if __name__ == '__main__':
    app.run()
