Mac port
==============

* in the makefile:
    * replace 'gcc' with 'clang'
    * replace '-Ofast' with '-O2'
    * replace '-Who-unused-result' with '-Wunused-result'

* where needed in the *.c files, replace '#include <malloc.h>' with '#include <stdlib.h>'

* intall 'wget' (I use Homebrew, brew install wget)
* change references to gzip to unzip

I changed the bash files to simply point to sample_data folder and zipped up the text8 sample data file, rather than have it try to download them everytime.

 Unzip the text8.zip file in /sample_data before running any of the bash files.

 Then run `bash demo-word.sh`

 I also included convertvec (ported to Mac) in the directory /convertvectotext
 https://github.com/marekrei/convertvec


Tools for computing distributed representation of words
------------------------------------------------------

We provide an implementation of the Continuous Bag-of-Words (CBOW) and the Skip-gram model (SG), as well as several demo scripts.

Given a text corpus, the word2vec tool learns a vector for every word in the vocabulary using the Continuous
Bag-of-Words or the Skip-Gram neural network architectures. The user should to specify the following:
 - desired vector dimensionality
 - the size of the context window for either the Skip-Gram or the Continuous Bag-of-Words model
 - training algorithm: hierarchical softmax and / or negative sampling
 - threshold for downsampling the frequent words 
 - number of threads to use
 - the format of the output word vector file (text or binary)

Usually, the other hyper-parameters such as the learning rate do not need to be tuned for different training sets. 

The script demo-word.sh downloads a small (100MB) text corpus from the web, and trains a small word vector model. After the training
is finished, the user can interactively explore the similarity of the words.

More information about the scripts is provided at https://code.google.com/p/word2vec/

