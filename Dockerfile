FROM jupyter/base-notebook

WORKDIR /app

# Copy your Jupyter Notebook and model files to the image
COPY Cirspr-repair-outcome.ipynb .
COPY regression.pkl .
COPY requirements.txt .

# Install necessary dependencies

RUN pip install -r requirements.txt


# Expose Jupyter Notebook port
EXPOSE 8888

# Command to start Jupyter Notebook
CMD ["sh", "-c", "jupyter notebook --ip=0.0.0.0 --port=8888 --NotebookApp.password=${Kaggle} --allow-root"]
