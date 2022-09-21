from flask import Flask
from flask_restful import Resource, Api
import time

app = Flask(__name__)
api = Api(app)
trenutencas = time.asctime()
cajt = "Današnji datum in trenuten čas: " + trenutencas


class HelloWorld(Resource):
    def get(self):
        return cajt

api.add_resource(HelloWorld, '/')

if __name__ == '__main__':
    app.run(host='0.0.0.0')
