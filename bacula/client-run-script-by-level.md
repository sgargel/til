# Eseguire uno script sul client solo ad un determinato Job Level
Fonte: http://serverfault.com/questions/841753/bacula-client-run-before-job-only-al-full-level

Solution I found is providing JobLevel to the script as a argument.

        Client Run Before Job = "/path/to/before/script.sh %l"
        Client Run After Job = "/path/to/after/script.sh %l"

and arranging scripts like this:

<pre>
#!/bin/bash
BACULA_J_LEVEL=$1

case $BACULA_J_LEVEL in

 Full)
  echo "Job Level $BACULA_J_LEVEL";
  #do stuff here
  exit 0
  ;;

 Differential)

  echo "Job Level $BACULA_J_LEVEL";
  # do nothing
  exit 0
  ;;

 Incremental)
  echo "Job Level $BACULA_J_LEVEL";
  # do nothing
  exit 0
  ;;

 *)

  echo "Level not recognized";
  exit 1;
  ;;

esac
</pre>
