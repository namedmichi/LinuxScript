## 1. 
# a
cd /
cd
cd ..

# b
mit den pfeiltasten kann man bereits benutze befehle nochmal benutzen
1. mal tab drücken tut ein befehl auto vervollständigen wenn eindeutig
2. mal tab drücken zeig alle noch möglichen befehle an

# c
alias ls='ls -l'

# d
whoami
pwd

## 2
# a
cp /etc/passwd . && less passwd

# b
cp /etc/passwd . || less passwd

# c
cp /etc/passwd . & less passwd

## 3
# a
ls -l /etc 2> /dev/null > file

# b
date >> file

# c
cat /etc/passwd | sed 's/bash/boing/'

## 4
tail -n20 .bash_history | cut -c1 | sort | uniq | tee test
