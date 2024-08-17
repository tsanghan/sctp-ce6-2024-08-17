# Flask Web
Running a website using a web framework

## Development
```bash
# Run and exec into container
docker run -p8080:8080 -v $(pwd):/app -it python:3.10.5-slim bash
# Install and test
cd /app
pip install -r requirements.txt
python app.py
```

## Build Image
```bash
docker build . -t <image_url>
```

## Run Container
```bash
docker run -dp8080:80 -e APP_PORT=80 --rm <image_url>
```
