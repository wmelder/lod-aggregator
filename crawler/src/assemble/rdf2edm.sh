#!/bin/sh

export CLASSPATH=
for jar in `ls lib/*.jar`
do
  export CLASSPATH=$CLASSPATH:$jar
done
export CLASSPATH=$CLASSPATH

java -Djava.util.logging.config.file="logging.properties" -Dsun.net.inetaddr.ttl=0 -Xmx4G -cp classes:$CLASSPATH eu.europeana.commonculture.lod.rdf2edmxml.Rdf2EdmCl $*
