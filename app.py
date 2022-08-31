from flask import Flask
import time
app = Flask(__name__)
trenutencas = time.asctime()
cajt = "Trenuten datum in čas je: " + trenutencas
@app.route('/')
def trenuten_cas():
    return cajt

