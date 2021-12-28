@echo off

mkdir %1
cd %1
pip install virtualenv
virtualenv venv
call venv\Scripts\activate

pip install flask
pip freeze >requirements.txt

(
echo from flask import Flask, render_template, request
echo app = Flask(__name__^)
echo if __name__ == "__main__":
echo.   app.run(^)
)>"app.py"

set FLASK_APP=app

mkdir template static
