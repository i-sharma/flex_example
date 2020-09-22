# FLEX Example to get you started

This repo aims to get you help you get started with flex and run your first program. You can extend the example to create larger and more meaningful projects.

### Install FLEX

You need FLEX, so before going ahead install FLEX distribution for your OS.

For Ubuntu: 
```
sudo apt-get update
sudo apt-get install flex
```

### Clone this repo

```
git clone https://github.com/ishans996/flex_example
cd flex_example
```

#### Run the tokenizer
There are two versions of same lexical token generator:
1. Interactive
2. Non-interactive

You need to go ahead with one mode only.

##### Running in interactive mode
```
cd interactive
make run
```

##### Running in non- interactive mode
```
cd non_interactive
make run
```

### File details

**1. ass3_roll.l**    
Here you write the regex stuff. See slides for how this file is constructed. Nothing to be afraid of.

**2. ass3_roll_main.c**    
The main function resides here. It takes the input stream (character stream you want to tokenize) from the input file pointed by `yyin` and calls `yylex` on it.

**3. ass3_roll_test.c**
This is the file, the contents of which will be split to generate tokens.

**4. Makefile**
Explore the commands inside this file. You will need them.
