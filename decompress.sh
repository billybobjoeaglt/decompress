#!/bin/bash
FILE1=$(file -b $1)

if [[ $FILE1 == *Zip* ]]; then
    echo "Zip"
    unzip $1

else
    if [[ $FILE1 == *tar* ]]; then
        echo "Tar"
        tar -xvf $1

    else
        if [[ $FILE1 == *gzip* ]]; then
            echo "Tar.gz"
            tar -zxvf $1

        else
            if [[ $FILE1 == *bzip2* ]]; then
                echo "Tar.bz2"
                tar -jxvf $1

                else
                    echo "WTF"
            fi
        fi
    fi
fi
