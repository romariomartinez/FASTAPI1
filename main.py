from fastapi import FastAPI


app = FastAPI()





@app.get("/")
def read_root():
    return { "¡Bienvenido a mi API de FastAPI!"}


@app.put("/add")
def add_numbers(x: int, y: int):
    result = x + y
    # Guardar el resultado en la colección "sum"
    
    return {"result": result}

@app.get("/subtract")
def subtract_numbers(x: int, y: int):
    result = x - y
    # Guardar el resultado en la colección "subtract"
    
    return {"result": result}

@app.get("/multiply")
def multiply_numbers(x: int, y: int):
    result = x * y
    # Guardar el resultado en la colección "multiply"
    
    return {"result": result}

@app.get("/divide")
def divide_numbers(x: float, y: float):
    if y == 0:
        return {"error": "Cannot divide by zero"}
    result = x / y
    # Guardar el resultado en la colección "divide"
    
    return {"result": result}
