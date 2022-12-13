# pdirb
minimalist url brute force script in Perl

# usage

- help
```
➜ ./pdirb.plx -h                                         
usage: ./pdirb.plx -w [wordlist] -u [url]
```

- with arguments
```
➜ ./pdirb.plx -u http://localhost:8000 -w ./wordlist.txt

     ▄▄▄▄▄▄▄ ▄▄▄▄▄▄  ▄▄▄ ▄▄▄▄▄▄   ▄▄▄▄▄▄▄ 
    █       █      ██   █   ▄  █ █  ▄    █
    █    ▄  █  ▄    █   █  █ █ █ █ █▄█   █
    █   █▄█ █ █ █   █   █   █▄▄█▄█       █
    █    ▄▄▄█ █▄█   █   █    ▄▄  █  ▄   █ 
    █   █   █       █   █   █  █ █ █▄█   █
    █▄▄▄█   █▄▄▄▄▄▄██▄▄▄█▄▄▄█  █▄█▄▄▄▄▄▄▄█

[$] website url  : http://localhost:8000
[$] wordlist path: ./wordlist.txt

[x] http://localhost:8000/admin/
[x] http://localhost:8000/php_settings/
[✔] http://localhost:8000/error/
[✔] http://localhost:8000/pdirb/
[x] http://localhost:8000/index.html
```

- without arguments
```
➜ ./pdirb.plx                                           

     ▄▄▄▄▄▄▄ ▄▄▄▄▄▄  ▄▄▄ ▄▄▄▄▄▄   ▄▄▄▄▄▄▄ 
    █       █      ██   █   ▄  █ █  ▄    █
    █    ▄  █  ▄    █   █  █ █ █ █ █▄█   █
    █   █▄█ █ █ █   █   █   █▄▄█▄█       █
    █    ▄▄▄█ █▄█   █   █    ▄▄  █  ▄   █ 
    █   █   █       █   █   █  █ █ █▄█   █
    █▄▄▄█   █▄▄▄▄▄▄██▄▄▄█▄▄▄█  █▄█▄▄▄▄▄▄▄█

[$] website url  : http://localhost:8000
[$] wordlist path: ./wordlist.txt

[x] http://localhost:8000/admin/
[x] http://localhost:8000/php_settings/
[✔] http://localhost:8000/error/
[✔] http://localhost:8000/pdirb/
[x] http://localhost:8000/index.html
```
