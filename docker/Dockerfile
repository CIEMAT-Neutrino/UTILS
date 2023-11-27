FROM almalinux:9
# Install packages from AlmaLinux base and EPEL
RUN dnf -y install 'dnf-command(config-manager)'
RUN dnf config-manager --set-enabled crb && dnf -y install epel-release && dnf -y update
# Install packages needed for ROOT
RUN dnf -y install python3 python3-pip python-devel git root\* python3-root python3-jupyroot sshfs

# Install python packages 
RUN pip3 install --upgrade pip wheel iminuit urllib3 tables metakernel ipykernel jupyter-server
COPY requirements.txt ./ 
RUN pip3 install -r requirements.txt
# Set up environment variables
RUN echo "alias myjupyter='jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root'" >> ~/.bashrc
# Expose port for Jupyter notebook server
EXPOSE 8888

RUN rm -rf requirements.txt && dnf clean all
WORKDIR /home

# To run jupyter when this docker container is started.
# CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''", "--no-browser", "--NotebookApp.allow_origin='*'"]
