OUTPUT=avalanche/talk/talk.html
clean:
	rm -f $(OUTPUT)

html: 
	. venv/bin/activate
	( cd avalanche/talk && landslide presentation.cfg )

deploy: html
	chromium $(OUTPUT)
