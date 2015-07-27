FROM python:latest
MAINTAINER Hǎiliàng Wáng <w@h12.me>

RUN pip install sqlalchemy \
                flask      \
		Jinja2     \
                cubes[all]

WORKDIR /work

ENTRYPOINT slicer serve slicer.ini
