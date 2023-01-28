FROM python as base
WORKDIR /app
ADD *.PY /app/
RUN pip install -r requirements.txt

FROM base as development
CMD ["python", "app-dev.py"]

FROM base as homolog
CMD ["python", "app-homolog.py"]

FROM base as production
CMD ["python", "app-production.py"]