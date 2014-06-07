test:
	corebuild -pkg pcre -pkg oUnit test.byte	
	./test.byte
clean:
	rm  -rf *.byte _build
