from src import app

@app.route("/")
def index():
    return "HELLO WORLD FROM K3D!!"