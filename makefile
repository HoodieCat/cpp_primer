CXX := g++
CXXFLAGS := -Wall -std=c++11

SRC_DIR := chapter01
BIN_DIR := bin

SOURCES := $(wildcard $(SRC_DIR)/*.cpp)

EXECUTABLE := $(patsubst $(SRC_DIR)/%.cpp, $(BIN_DIR)/%, $(SOURCES))

all: $(EXECUTABLE)

$(BIN_DIR)/%:$(SRC_DIR)/%.cpp | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) -o $@ $<

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

clean: 
	rm -rf $(BIN_DIR)
