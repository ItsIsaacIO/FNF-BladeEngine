package shaders;

import flixel.system.FlxAssets.FlxShader;

class CromaticShader extends FlxShader {
    @glFragmentSource('
        #pragma header

        uniform vec3 iResolution;
        uniform samplerXX iChannel0..3;

        void main()
        {
            vec2 uv = fragCoord.xy / iResolution.xy;
            
            vec2 d = abs((uv - 0.5) * 2.0);
            d = pow(d, vec2(2.0, 2.0));
                
            vec4 r = texture(iChannel0, uv - d * 0.015);
            vec4 g = texture(iChannel0, uv);
            vec4 b = texture(iChannel0, uv);
            
            fragColor = vec4(r.r, g.g, b.b, 1.0);
        }
    ')

    public function new() {
        super();
    }
}