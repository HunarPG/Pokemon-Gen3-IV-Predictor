#!/bin/bash
# Compilation and run script for Gen 3 IV program
echo ../Gen3Predictor.jar 
rm ../Gen3Predictor.jar 

echo Compiling Java code
javac -cp /home/jacob/git/Pokemon-Gen3-IV-Predictor/src -d /home/jacob/git/Pokemon-Gen3-IV-Predictor/TestBin/ /home/jacob/git/Pokemon-Gen3-IV-Predictor/src/gen3check/Main.java

echo Building into jar file
jar cfe ../Gen3Predictor.jar gen3check.Main ./gen3check/* ./gen3check/gui/* ./gen3check/observers/* ./gen3check/pokemon/* ./gen3check/predictor/* ./gen3check/util/* ./rng/* ./database/* ./font/* ./image/*

echo Running executable jar file
java -jar ../Gen3Predictor.jar

echo Executable terminated