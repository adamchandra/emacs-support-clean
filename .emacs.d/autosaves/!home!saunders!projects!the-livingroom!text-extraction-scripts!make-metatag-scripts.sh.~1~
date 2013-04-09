#!/bin/bash

find . -type f -name "*.pstotext.xml" -printf "%p -> %p.meta.xml\n" > .meta-tmp

split -a 4 -d -l 100 .meta-tmp .meta-proc.

for f in .meta-proc*
do
  cat <<EOF > "$f.meta.sge"
#!/bin/bash

# --- interpreter
#$ -S /bin/sh
#
# --- run from current dir
#$ -cwd
#
# --- job name
#$ -N rexa.metatag
#
# --- stdio redirection
#$ -e /dev/null
#$ -o /dev/null
#
# --- merge stdout/stderr?
#$ -j y
#
# --- pass on entire env
#$ -V
#


declare -r metatagger="../the-world/the-livingroom/rexa1-metatagger/bin/runcrf"


EOF

  echo "cat $f | ../the-world/the-livingroom/rexa1-metatagger/bin/runcrf" >> "$f.meta.sge"

done
