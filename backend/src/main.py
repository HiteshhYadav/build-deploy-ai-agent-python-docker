import os 
from fastapi import FastAPI 


app=FastAPI()

MY_PROJECT=os.environ.get("MY_PROJECT") or "This is my project" #fallback
API_KEY=os.environ.get("API_KEY")

if not API_KEY:
    raise NotImplementedError("'API_KEY' is not set!")

@app.get("/")
def read_index():
    return {"hello":"world again!","project-name":MY_PROJECT,"secret-api-key":API_KEY} 