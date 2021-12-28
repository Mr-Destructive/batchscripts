@echo off

mkdir %1
cd %1
pip install virtualenv
virtualenv venv
call venv\Scripts\activate

pip install fastapi uvicorn
pip freeze >requirements.txt

(
echo from fastapi import FastAPI
echo.app = FastAPI(^)
echo.@app.get("/"^)
echo async def root(^):
echo    return {"message": "Hello World"}
)>"main.py"

uvicorn main:app --reload
