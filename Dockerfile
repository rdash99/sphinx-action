FROM sphinxdoc/sphinx

LABEL "maintainer"="Rowan Dash <rowandash@swansea.ac.uk>"

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action
RUN pip install -r /sphinx_action/requirements.txt

ENTRYPOINT ["/entrypoint.py"]
