docker run -itd \
    -p 8888:8888 \
    --mount type=bind,source="$(pwd)"/data,target=/jupyter/data \
    jupyter-playground/pyspark:latest jupyter notebook --NotebookApp.token='' --NotebookApp.password=''