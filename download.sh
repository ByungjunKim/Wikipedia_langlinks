rm -rf resources
mkdir resources
cd resources

git clone https://github.com/clab/wikipedia-parallel-titles
cd wikipedia-parallel-titles

rm *gz

# wget https://dumps.wikimedia.org/kowiki/20200301/kowiki-20200301-page.sql.gz
# wget https://dumps.wikimedia.org/kowiki/20200301/kowiki-20200301-langlinks.sql.gz

# wget https://dumps.wikimedia.org/enwiki/20200301/enwiki-20200301-page.sql.gz
# wget https://dumps.wikimedia.org/enwiki/20200301/enwiki-20200301-langlinks.sql.gz

cd ../..
cp lib/*py resources/wikipedia-parallel-titles
