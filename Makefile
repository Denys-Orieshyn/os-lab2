CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11
AR = ar
ARFLAGS = -rcs

LIB_NAME = libcalculator.a
TARGET = app

all: $(TARGET)

# Збирання статичної бібліотеки
$(LIB_NAME): calculator.o
	$(AR) $(ARFLAGS) $@ $^

# Компіляція об'єктних файлів
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Лінкування програми зі створеною бібліотекою
$(TARGET): main.o $(LIB_NAME)
	$(CXX) main.o -L. -lcalculator -o $(TARGET)

# Абстрактна ціль для очищення каталогу
.PHONY: clean
clean:
	rm -f *.o $(LIB_NAME) $(TARGET)
