#!/usr/bin/env python3
from flask_cors import CORS
import connexion
from random import choice
from quotes import QUOTES
import random
import json

def get_quote():
    return {
        "quote": choice(QUOTES)
    }

def get_health(uid: int):
    data = []
    for _ in range(10):
        data.append({'y': random.randrange(1, 5)})
    return {
        "health_data": data
    }

def index():
    return {
        "status": "It works!"
    }#

def get_random_recipe():
    recipe = random.choice(json.loads(open("Recipes.json", "r").read()))
    return {
        "name": recipe["name"],
        "health_score": recipe["health_score"]
    }

if __name__ == '__main__':
    app = connexion.App(__name__, specification_dir='.')
    app.add_api('swagger.yml')
    CORS(app.app)
    app.run(host="127.0.0.1", port=55555, debug=True)