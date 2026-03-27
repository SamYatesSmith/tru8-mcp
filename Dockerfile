FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml README.md LICENSE ./
COPY tru8_mcp/ tru8_mcp/

RUN pip install --no-cache-dir .

ENTRYPOINT ["python", "-m", "tru8_mcp"]
