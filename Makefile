all: cube

vert.spv: shaders/vert.vert
	glslc shaders/vert.vert -o shaders/vert.spv

frag.spv: shaders/frag.frag
	glslc shaders/frag.frag -o shaders/frag.spv

cube: cube.cpp vert.spv frag.spv
	gcc -g -o cube cube.cpp -std=c++17 -lstdc++ -lvulkan -lglfw -lm -I stb
