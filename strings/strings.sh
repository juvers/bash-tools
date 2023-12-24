#!/bin/bash

# First line of the script is the shebang which tells the system how to execute
# the script: https://en.wikipedia.org/wiki/Shebang_(Unix)
# As you already figured, comments start with #. Shebang is also a comment.

# Simple hello world example:
echo "Hello world!" # => Hello world!

# Each command starts on a new line, or after a semicolon:
echo "This is the first command"; echo "This is the second command"
# => This is the first command
# => This is the second command

# Declaring a variable looks like this:
variable="Some string"

# But not like this:
variable="Some string" # => returns error "variable: command not found"
# Bash will decide that `variable` is a command it must execute and give an error
# because it can't be found.

# Nor like this:
variable="Some string" # => returns error: "Some string: command not found"
# Bash will decide that "Some string" is a command it must execute and give an
# error because it can't be found. In this case the "variable=" part is seen
# as a variable assignment valid only for the scope of the "Some string"
# command.

# Using the variable:
echo "$variable" # => Some string
echo '$variable' # => $variable
# When you use a variable itself — assign it, export it, or else — you write
# its name without $. If you want to use the variable's value, you should use $.
# Note that ' (single quote) won't expand the variables!
# You can write variable without surrounding quotes but it's not recommended.

# Parameter expansion ${...}:
echo "${variable}" # => Some string
# This is a simple usage of parameter expansion such as two examples above.
# Parameter expansion gets a value from a variable.
# It "expands" or prints the value.
# During the expansion time the value or parameter can be modified.
# Below are other modifications that add onto this expansion.

# String substitution in variables:
echo "${variable/Some/A}" # => A string
# This will substitute the first occurrence of "Some" with "A".

# Substring from a variable:
length=7
echo "${variable:0:length}" # => Some st
# This will return only the first 7 characters of the value
echo "${variable: -5}" # => tring
# This will return the last 5 characters (note the space before -5).
# The space before minus is mandatory here.

# String length:
echo "${#variable}" # => 11

# Indirect expansion:
other_variable="variable"
echo ${!other_variable} # => Some string
# This will expand the value of `other_variable`.

# The default value for variable:
echo "${foo:-"DefaultValueIfFooIsMissingOrEmpty"}"
# => DefaultValueIfFooIsMissingOrEmpty
# This works for null (foo=) and empty string (foo=""); zero (foo=0) returns 0.
# Note that it only returns default value and doesn't change variable value.


# shell execution with backticks(all are same)
echo `pwd`
echo $(pwd)
echo "$(pwd)"
echo "$PWD"
echo "${PWD}"

# conditional execution
# git commit || echo "Commit failed"
# git commit && git push


# string replacement and slicing
name="John"
food="rice"
echo ${name}
echo ${name/J/j}    #=> "john" (substitution)
echo ${name:0:2}    #=> "Jo" (slicing)

len=2
echo ${name:0:length}  #=> "Jo"
echo ${name::2}     #=> "Jo" (slicing)
echo ${name:(-1)}   #=> "n" (slicing from right)
#start at 2nd but last and return 1 character
echo ${name:(-2):1} #=> "h" (slicing from right)

# return cake if variable food doesnt exist
echo ${food:-Cake}  #=> $food or "Cake"

# replace all
umb=umbrella
echo ${umb//l/k}

prefix=umb
suffix=lla
echo ${umb/#$prefix}
echo ${umb/%$suffix}
echo ${umb/#$prefix/jack}

echo ${samp:=Simon}

echo ${samp}

# ${FOO%suffix}	Remove suffix
# ${FOO#prefix}	Remove prefix
# ${FOO%%suffix}	Remove long suffix
# ${FOO##prefix}	Remove long prefix
# ${FOO/from/to}	Replace first match
# ${FOO//from/to}	Replace all
# ${FOO/%from/to}	Replace suffix
# ${FOO/#from/to}	Replace prefix


# ${FOO:-val}	$FOO, or val if unset (or null)
# ${FOO:=val}	Set $FOO to val if unset (or null)
# ${FOO:+val}	val if $FOO is set (and not null)
# ${FOO:?message}	Show error message and exit if $FOO is unset (or null)
# Omitting the : removes the (non)nullity checks, e.g. ${FOO-val} expands to val if unset otherwise $FOO.