echo "use gpu with multiple processes";
for((i=0;i<=8;i++))
do
    {
     echo "use gpu" +$i ; 
     echo CUDA_VISIBLE_DEVICES=$i python parameter_search.py --gpu $i --config config/imdb.ini; 
     CUDA_VISIBLE_DEVICES=$i python parameter_search.py --gpu $i --config config/imdb.ini; 
     
     }&
done
wait