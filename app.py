# Simple web application using Flask framework
import socket
import os
from flask import Flask

hostname = socket.gethostname()
port = os.environ.get('APP_PORT', 8080)

app = Flask(__name__)

@app.route("/")
def hello_world():
    return f"<p>hostname: {hostname}</p>"

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=port)
