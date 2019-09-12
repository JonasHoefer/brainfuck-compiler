# Brainfuck Compiler

A compiler for [Brainfuck](https://en.wikipedia.org/wiki/Brainfuck) written in [Haskell](https://hoogle.haskell.org) with a [llvm](https://llvm.org/) backend.

## Features
Currently done features:
- [x] Parser
- [x] Interpreter for testing purposes 
- [x] llvm ir generation

## Usage
Use `cat hw.bf | stack run && lli out.ll` to compile and execute an bf file.