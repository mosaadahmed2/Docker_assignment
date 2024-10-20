# Dockerfile
FROM python:3.9

# Create the output directory
RUN mkdir -p /home/data/output

# Set the working directory
WORKDIR /home

# Copy the script and data files
COPY scripts.py /home/
COPY IF.txt /home/data/
COPY AlwaysRememberUsThisWay.txt /home/data/

# Install any necessary packages (if required)
# RUN pip install -r requirements.txt

# Command to run the script
CMD ["python", "scripts.py"]
