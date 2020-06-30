# cardgen

'cardgen' is a command-line utility that generates images representing playing 
cards.

## Overview

'cardgen' generates a shell script that makes multiple calls to the 
ImageMagick command, 'convert', to compose a pack of playing cards from 
existing images. It is very configurable, allowing for playing cards of 
greatly varying styles to be created.

## Cloning and Installing

To clone, install and run this code, execute the following unix/linux commands:

    git clone https://github.com/PhilLockett/cardgen.git
    cd cardgen/
    ./configure
    make
    sudo make install

## Creating a tar file

Sometimes it is more convenient to use a tarbar to share software than connect 
to GitHub. The following command will create a tar file called 
'cardgen-1.0.tar.gz' from a cloned copy of the code:

    cd cardgen/
    make dist

## Installing from tar file

The install process described in the INSTALL document is a generic 
description of the install process. The install process is also described 
in the 'cardgeneratorUserGuide.pdf' document. For completeness the install 
process is also described below. All three descriptions are essentially the 
same and clearly, it only needs to be installed once.

To install you will need a C++ compiler and make installed to compile 
'cardgen' from a release tar file. You will also need the ImageMagick image 
processing suite installed. The following command will unpack the tar file.

    tar zxf cardgen-1.0.tar.gz

After unpacking, issue the following shell commands:

    cd cardgen-1.0/
    ./configure
    make
    sudo make install

## Setting up 'cardgen' environment and Running

With 'cardgen' installed the following command will display the help page:

    cardgen --help

'cardgen' works in an environment containing the component images needed to 
compose the playing card images. The GitHub repository contains the file 
'cardgen/CardWork.tar.gz' which provides this environment. It is recommended 
that this environment is set up outside of the cardgen-1.0 directory. The 
environment can be set up with the following commands:

    cd ..
    cp cardgen/CardWork.tar.gz .
    tar zxf CardWork.tar.gz
    cd CardWork/
    ./setup.sh

This quick test will use 'cardgen' to generate a bash script called draw.sh 
which is then run and should create card images in 'cards/1/'.

    cardgen -a
    ./draw.sh

# Further reading

The document 'cardgeneratorUserGuide.pdf' describes the installation, the 
environment set up and 'cardgen' usage with many examples.

# Additional packages

Additional packages are currently unavailable.
