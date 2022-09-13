from flask import Flask
import time
app = Flask(__name__)
trenutencas = time.asctime()
cajt = "Današnji datum in trenuten čas je: " + trenutencas
@app.route('/')
def trenuten_cas():
    return cajt
