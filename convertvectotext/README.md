Mac port
============

Changed reference to malloc.c to get this to work on a Mac.

convertvec
====================

A small tool to convert vectors between different formats for the [word2vec](https://code.google.com/p/word2vec/) library.

Usage
----------

Build

	make

Convert vectors from binary to plain text:

	./convertvec bin2txt input.bin output.txt

Convert vectors from plain text to binary:

	./convertvec txt2bin input.txt output.bin

