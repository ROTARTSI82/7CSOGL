#version 330 core
out vec4 color;

in vec2 texCoord;

uniform sampler2D texSlot;

void main() {
    color = texture(texSlot, texCoord);
}
