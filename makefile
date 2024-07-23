# Variables
OUTPUT=README.md
SCRIPT=guessinggame.sh

# Default target
all: $(OUTPUT)

# Target to generate README.md
$(OUTPUT): $(SCRIPT)
	echo "# Guessing Game" > $(OUTPUT)
	echo "\n**Date and Time of execution:** $$(date)" >> $(OUTPUT)
	echo "\n**Number of lines in guessinggame.sh:** $$(wc -l < $(SCRIPT))" >> $(OUTPUT)

# Clean target
.PHONY: clean
clean:
	rm -f $(OUTPUT)
