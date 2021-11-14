FROM sagemath/sagemath:9.3.beta8-py3
# FROM sagemath/sage:latest
# for all tags see here:
# https://hub.docker.com/r/sagemath/sagemath/tags?page=1&ordering=last_updated

RUN sage -pip install jupyter_contrib_nbextensions pandas ipycytoscape termcolor matplotlib_venn nbconvert colored
RUN sage -jupyter contrib nbextension install --user

CMD ["sage-jupyter"]