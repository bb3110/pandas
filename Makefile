index.html: talk.md
	python refreeze/freeze.py
	cat index.html | sed "s/\# doctest:.*//" > index.html

test:
	nosetests -vx --with-doctest --doctest-extension=md talk.md

RANDOM_PORT=`python -c 'import random; print int(5000+ 5000*random.random())'`

slideshow:
	PORT=$(RANDOM_PORT) python refreeze/flask_app.py
