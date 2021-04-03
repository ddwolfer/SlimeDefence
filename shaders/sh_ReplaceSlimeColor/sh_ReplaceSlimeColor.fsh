//
// Simple passthrough fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

#define darkEyes 85.0
uniform float range;		//誤差值
vec4 BodyColorMatch = vec4(157.0/255.0,208.0/255.0,145.0/255.0,1.0);//身體符合的顏色
vec4 OutlineColorMatch = vec4(92.0/255.0,160.0/255.0,80.0/255.0,1.0);//外框符合的顏色
vec4 ReflectColorMatch = vec4(210.0/255.0,242.0/255.0,198.0/255.0,1.0);//反光符合的顏色
vec4 HurtColorMatch =  vec4(193.0/255.0,229.0/255.0,160.0/255.0,1.0);//受傷符合的顏色
vec4 EyesColorMatch = vec4(0.0,0.0,0.0,1.0);//眼睛符合的顏色
uniform vec4 colorReplace;	//要替換的顏色 


void main()
{
	vec4 pixelColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );	//當前sprite的所有像素點顏色
	
	float newRange = range / 255.0; //shader 為0~1 需先將顏色/255
	
	// 確定身體RGB都相似
	if(( abs(pixelColor.r - BodyColorMatch.r) ) <= newRange){
		if(( abs(pixelColor.g - BodyColorMatch.g) ) <= newRange){
			if(( abs(pixelColor.b - BodyColorMatch.b) ) <= newRange){
				pixelColor.rgb = colorReplace.rgb;
			}
		}
	}
	// 確定外框RGB都相似
	if(( abs(pixelColor.r - OutlineColorMatch.r) ) <= newRange){
		if(( abs(pixelColor.g - OutlineColorMatch.g) ) <= newRange){
			if(( abs(pixelColor.b - OutlineColorMatch.b) ) <= newRange){
				pixelColor.r = colorReplace.r*0.6;
				pixelColor.g = colorReplace.g*0.76;
				pixelColor.b = colorReplace.b*0.55;
			}
		}
	}
	
	// 確定受傷RGB都相似
	if(( abs(pixelColor.r - HurtColorMatch.r) ) <= newRange){
		if(( abs(pixelColor.g - HurtColorMatch.g) ) <= newRange){
			if(( abs(pixelColor.b - HurtColorMatch.b) ) <= newRange){
				pixelColor.r = colorReplace.r*1.23;
				pixelColor.g = colorReplace.g*1.16;
				pixelColor.b = colorReplace.b*1.10;
			}
		}
	}

	//太暗的話把眼睛變亮
	if( (colorReplace.r <=darkEyes/255.0) && (colorReplace.g <=darkEyes/255.0) && (colorReplace.b <=darkEyes/255.0) ){
		if( pixelColor.r == EyesColorMatch.r){
			if( pixelColor.g == EyesColorMatch.g){
				if( pixelColor.b == EyesColorMatch.b){
					pixelColor.r = 220.0/255.0;
					pixelColor.g = 220.0/255.0;
					pixelColor.b = 40.0/255.0;
				}
			}
		}
	}
    gl_FragColor = pixelColor;
}

