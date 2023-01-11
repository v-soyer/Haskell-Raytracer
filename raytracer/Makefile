EXECUTABLE = raytracer
SRC_EXEC = $(shell stack path --local-install-root)/bin/${EXECUTABLE}-exe

all: $(EXECUTABLE)

$(EXECUTABLE):
				stack build
				cp $(SRC_EXEC) ${EXECUTABLE}

clean:
	stack clean

fclean:	clean
		rm -rf ${EXECUTABLE}

re:	fclean all