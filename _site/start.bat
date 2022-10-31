if exist index.md goto host
jekyll new ./ --blank
:host
jekyll serve --host 0.0.0.0 --port 8080
