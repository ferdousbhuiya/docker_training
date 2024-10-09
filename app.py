from flask import Flask

app = Flask(__name__)

@app.route('/', methods=['GET'])  # Correcting method to methods

def home():
    return "Hello World, How are you all?"

if __name__ == "__main__":
    app.run(port=5001, host="0.0.0.0",debug=True)
