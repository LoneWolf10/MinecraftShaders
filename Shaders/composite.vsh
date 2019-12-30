#version 120

varying vec4 textcoord;

void main()
{
  gl_Position = ftransform();

  textcoord = gl_MultiTexCoord0;
}
