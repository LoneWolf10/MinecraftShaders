#version 120

varying vec4 textcoord;
uniform sampler2D gcolor;

void  main()
{
  vec3 color = texture2D(gcolor, textcoord.st).rgb;

//color.g = color.g * 2.0;
  gl_FragColor = vec4(color.rgb,1.0f);
}
