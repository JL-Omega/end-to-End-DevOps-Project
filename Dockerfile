# Use Python 3.6 Alpine image as base
FROM python:3.6-alpine

# Adding maintainer information
LABEL maintainer="JL Mpande <mpandejl1@gmail.com>"

# Setting working directory to /opt
WORKDIR /opt

# Adding files from local directory 'ic-webapp' to /opt in the container
ADD ic-webapp /opt

# Installing Flask using pip
RUN pip install flask

# Setting environment variables for Odoo and pgAdmin URLs
ENV ODOO_URL="" \
    PGADMIN_URL=""

# Exposing port 8080
EXPOSE 8080

# Setting the default command to run when the container starts
CMD ["python", "app.py"]
