FROM debian
MAINTAINER Lorcan McDonald <lorcan@lorcanmcdonald.com>
ENV PATH $PATH:$HOME/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.8.2/bin:/opt/happy/1.19.3/bin:/opt/alex/3.1.3/bin
RUN sudo apt-get update
RUN sudo apt-get install -y python-software-properties software-properties-common zlib1g-dev libssl-dev
RUN sudo add-apt-repository -y ppa:hvr/ghc
RUN sudo apt-get update
RUN sudo apt-get install -y cabal-install-1.20 ghc-7.8.2 happy-1.19.3 alex-3.1.3
RUN cabal update
WORKDIR /src/

ENTRYPOINT ["/opt/cabal/1.20/bin/cabal"]
CMD [ "help" ]
