# assemblyPlayground
This repo contains asm source file I wrote while learning assembly IA-32

#compilation for mac and linux
nasm -f (elf64, elf / macho64, macho) sourceFile

#linking 32bit
ld -m elf_i386 -s -o executableName objectFileName

#linking 64bit
ld -o executableName objectFileName
