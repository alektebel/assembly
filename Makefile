.PHONY: test-all clean-all list help

# Find all exercise directories
EXERCISE_DIRS := $(sort $(dir $(wildcard [0-9][0-9]-*/Makefile)))

help:
	@echo "ARM64 Assembly Learning Project"
	@echo ""
	@echo "Available targets:"
	@echo "  make test-all   - Run tests for all exercises"
	@echo "  make clean-all  - Clean all build artifacts"
	@echo "  make list       - List all exercises"
	@echo "  make help       - Show this help message"
	@echo ""
	@echo "To work on a specific exercise:"
	@echo "  cd 01-hello-world"
	@echo "  make test"

list:
	@echo "Available exercises:"
	@for dir in $(EXERCISE_DIRS); do \
		echo "  $$dir"; \
	done

test-all:
	@echo "Running all exercise tests..."
	@echo ""
	@passed=0; \
	total=0; \
	for dir in $(EXERCISE_DIRS); do \
		total=$$((total + 1)); \
		echo "===================================="; \
		echo "Testing $$dir"; \
		echo "===================================="; \
		if $(MAKE) -C $$dir test 2>&1; then \
			passed=$$((passed + 1)); \
			echo ""; \
		else \
			echo ""; \
			echo "Failed in $$dir"; \
			echo ""; \
		fi; \
	done; \
	echo "===================================="; \
	echo "Results: $$passed/$$total tests passed"; \
	echo "===================================="; \
	if [ $$passed -eq $$total ]; then \
		echo "All tests passed!"; \
		exit 0; \
	else \
		echo "Some tests failed."; \
		exit 1; \
	fi

clean-all:
	@echo "Cleaning all exercises..."
	@for dir in $(EXERCISE_DIRS); do \
		echo "Cleaning $$dir"; \
		$(MAKE) -C $$dir clean; \
	done
	@echo "All clean!"
