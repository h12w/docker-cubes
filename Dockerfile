FROM debian:latest
MAINTAINER Hǎiliàng Wáng <w@h12.me>

RUN apt-get update && \
    apt-get install --yes python-dev \
                          python-pip \
                          git

RUN pip install sqlalchemy \
                flask      \
                cubes[all]
RUN git clone git://github.com/DataBrewery/cubes.git

ENTRYPOINT [""]
