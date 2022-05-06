VERILOG = iverilog
TARGET = test0429.vcd
TEMP = test0429.vvp

$(TARGET) : $(TEMP)
	vvp $(TEMP)

$(TEMP):  test0429.v test0429_tb.v
	$(VERILOG) -o $(TEMP)  test0429.v test0429_tb.v

clean:
	-del $(TARGET)
	-del $(TEMP)
