cd resources/wikipedia-parallel-titles
# cd ~/data/Databases

# bash build-corpus.sh en kowiki-20200301  > ko-en.txt #한-영
bash build-corpus.sh ko enwiki-20200301  > en-ko.txt # 영-한국어
bash build-corpus.sh de enwiki-20200301  > en-de.txt # 영-독일어
bash build-corpus.sh es enwiki-20200301  > en-es.txt # 영-스페인어
bash build-corpus.sh fr enwiki-20200301  > en-fr.txt # 영-불어
bash build-corpus.sh it enwiki-20200301  > en-it.txt # 영-이태리어
bash build-corpus.sh ja enwiki-20200301  > en-ja.txt # 영-일본어
bash build-corpus.sh pl enwiki-20200301  > en-pl.txt # 영-폴란드어
bash build-corpus.sh pt enwiki-20200301  > en-pt.txt # 영-포르투갈어
bash build-corpus.sh ru enwiki-20200301  > en-ru.txt # 영-러시아어
bash build-corpus.sh vi enwiki-20200301  > en-vi.txt # 영-베트남
bash build-corpus.sh zh enwiki-20200301  > en-zh.txt # 영-중국어

# python create_index.py --output_folder="output" --input_path="en-ko.txt" --from_lang_to_lang="ko---en" --verbose=2
python create_index.py --output_folder="output" --input_path="en-ko.txt" --from_lang_to_lang="en---ko" --verbose=2
python create_index.py --output_folder="output" --input_path="en-de.txt" --from_lang_to_lang="en---de" --verbose=2
python create_index.py --output_folder="output" --input_path="en-es.txt" --from_lang_to_lang="en---es" --verbose=2
python create_index.py --output_folder="output" --input_path="en-fr.txt" --from_lang_to_lang="en---fr" --verbose=2
python create_index.py --output_folder="output" --input_path="en-it.txt" --from_lang_to_lang="en---it" --verbose=2
python create_index.py --output_folder="output" --input_path="en-ja.txt" --from_lang_to_lang="en---ja" --verbose=2
python create_index.py --output_folder="output" --input_path="en-pl.txt" --from_lang_to_lang="en---pl" --verbose=2
python create_index.py --output_folder="output" --input_path="en-pt.txt" --from_lang_to_lang="en---pt" --verbose=2
python create_index.py --output_folder="output" --input_path="en-ru.txt" --from_lang_to_lang="en---ru" --verbose=2
python create_index.py --output_folder="output" --input_path="en-vi.txt" --from_lang_to_lang="en---vi" --verbose=2
python create_index.py --output_folder="output" --input_path="en-zh.txt" --from_lang_to_lang="en---zh" --verbose=2

python merge_indices.py --input_folder='output' --verbose="2"
