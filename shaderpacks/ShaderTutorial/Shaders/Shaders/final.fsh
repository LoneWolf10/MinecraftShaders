#version 120

varying vec4 texcoord;
uniform sampler2D gcolor;

void Vignette(inout vec3 color) {
  float dist = distance(texcoord.ts, vec2(0.5f)) * 2.0 ;
    //vec2(0.5)) * 2.0
  dist /= 1.5142f;

  dist = pow(dist, 1.1f);

  color.rgb *= 1.0f - dist;
}

void  main()
{
  vec3 color = texture2D(gcolor, texcoord.st).rgb;

  Vignette(color);

  gl_FragColor = vec4(color.rgb,1.0f);
}
