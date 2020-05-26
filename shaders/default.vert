#version 120
attribute vec3 pos;
attribute vec2 inTexCoord;
attribute mat4 instanceMat;

varying vec2 texCoord;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main() {
    gl_Position = projection * view * instanceMat * model * vec4(pos, 1.0);
    texCoord = inTexCoord;
}
