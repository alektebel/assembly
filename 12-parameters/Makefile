.PHONY: all test clean solution
all: exercise
exercise: exercise.s
	as exercise.s -o exercise.o
	ld exercise.o -o exercise
solution: solution.s
	as solution.s -o solution.o
	ld solution.o -o solution
test: exercise
	chmod +x test.sh
	./test.sh
clean:
	rm -f *.o exercise solution
