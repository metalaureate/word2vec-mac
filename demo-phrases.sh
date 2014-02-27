./word2phrase -train sample_data/text8 -output text8-phrase -threshold 500 -debug 2
./word2vec -train text8-phrase -output vectors-phrase.bin -cbow 0 -size 300 -window 10 -negative 0 -hs 1 -sample 1e-3 -threads 12 -binary 1
./distance vectors-phrase.bin