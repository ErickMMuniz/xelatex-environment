# Docker + XeLatex

Simple xelatex env with Docker. 

# Docker

## Build

```
docker build -t xelatex-image .
```

## Run

I recommend setting a local volume in order to use a editor

```
docker run -v "/mnt/d/testFolder/testProgrammingProjects/testXeLatexAndDocker/latex:/app" -it xelatex-image /bin/bash
```

# Compile tex file

```
xelatex -file-line-error -interaction=nonstopmode main.tex
```

# Assets

- Fonts
    - Alegreya
        - https://huertatipografica.com/es
