SRC := markdown_Autonomous_Warehouse_Robot_using_Deep.txt
OUT := Autonomous_Warehouse_Robot.docx

.PHONY: all clean

all: $(OUT)

$(OUT): $(SRC)
	pandoc "$<" -o "$@" \
		--syntax-highlighting=tango \
		--standalone

clean:
	del /Q "$(OUT)" 2>NUL