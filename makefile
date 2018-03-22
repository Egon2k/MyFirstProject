clean:
	del .\bin\* /Q

build: source/main.cpp source/rectangle.cpp
	g++ source/main.cpp source/rectangle.cpp -I include/. -o bin/ExecuteMe

rebuild: source/main.cpp source/rectangle.cpp
	del .\bin\* /Q
	make build
	
run: source/main.cpp source/rectangle.cpp
	make rebuild
	./bin/ExecuteMe.exe