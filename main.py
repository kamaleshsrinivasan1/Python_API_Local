from flask import Flask

app = Flask(__name__)

@app.route('/')
def greet():
    return "Hello world"

if __name__ == "__main__":
    try:
        app.run(
            debug=True,
            host="0.0.0.0",
            port=10002
            )
    except Exception as e:
        print(f"An error occurred: {e}")
