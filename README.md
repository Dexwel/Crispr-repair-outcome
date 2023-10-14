# Crispr-repair-outcome

Full explanation to the model building, evaluation and preidction can be found in this hashnode blog: https://dexwel.hashnode.dev/crispr-repair-outcome-prediction

DocKer documenation

Docker image  was created for the picKle file and the that includes both your Jupyter Notebook setup and the model files, and then push it to Google Container Registry (GCR), you can follow these steps:

1. **Create a Dockerfile:**
   Create a `Dockerfile` with the following content in the directory where your notebook and model files are located:


2. **Build the Docker image:**
   Open a terminal and navigate to the directory where your `Dockerfile` is located. Run the following command to build the Docker image (replace `<image_name>` with a suitable name for your image):

   ```bash
   docker build -t crispr-repair-outcome .
   ```

3. **Tag the Docker image for GCR:**
   Tag the Docker image to prepare it for pushing to Google Container Registry (replace `<image_name>` and `<tag>` with appropriate values):

   ```bash
   docker tag Crispr-repair-outcome gcr.io/<project_id>/Crispr-repair-outcome:latest
   ```

   Replace `<project_id>` with your Google Cloud project ID.

4. **Authenticate to GCR:**
   Authenticate Docker to GCR using the following command:

   ```bash
   gcloud auth configure-docker
   ```

5. **Push the Docker image to GCR:**
   Push the Docker image to Google Container Registry:

   ```bash
   docker push gcr.io/<project_id>/<image_name>:<tag>
   ```

   This will push the Docker image, including your Jupyter Notebook and model files, to GCR.