FROM python:2
MAINTAINER Hǎiliàng Wáng <w@h12.me>

RUN pip install sqlalchemy   \
                flask        \
                Jinja2       \
                MySQL-Python \
                cubes[all]

WORKDIR /work

ENTRYPOINT slicer serve slicer.ini
