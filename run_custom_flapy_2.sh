start_time=$(date +%s) &&
                             echo "start time : $start " &&
                           ./flapy.sh run --out-dir results/example_results_httpsgithubcom0rpczerorpcpython --plus-random-runs /home/gabrieltararam/PypiComparer/PypiComparator/PypiComparator/repositories/flapy/temporary_example_2.csv 400  && 
                            end_flapy_run=$(date +%s)  && 
                            duration=$((end_flapy_run - start_time))
                           hours=$((duration / 3600))
                            minutes=$(((duration % 3600) / 60))
                            seconds=$((duration % 60))
                            echo "Tempo total de execução: ${hours} horas, ${minutes} minutos, ${seconds} segundos."

                           ./flapy.sh parse ResultsDirCollection --path results/example_results_httpsgithubcom0rpczerorpcpython get_tests_overview _df to_csv --index=false
                           && end_time=$(date +%s)  && 
                           runtime=$((end_time-start_time)) && 
                           minutes=$(( (runtime % 3600) / 60 )) && 
                            echo "end time : end_time " &&
                            echo "runtime time : $runtime " &&
                           echo "Execution time : $minutes minutes"
                           