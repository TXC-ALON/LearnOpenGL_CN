#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

out vec3 ourColor;
uniform float xOffset;
uniform float yOffset;
uniform float timeValue;
vec3 v1 = vec3(1.0f,0.0f,0.0f);
vec3 v2 = vec3(0.0f,1.0f,0.0f);
vec3 v3 = vec3(0.0f,0.0f,1.0f);
void main()
{
    float sinValue = xOffset*2;//sin(timeValue)
    float cosValue = yOffset*2;//cos(timeValue)
    vec3 result;
    result.x = v1.x * cosValue + v2.x * sinValue;
    result.y = v1.y * cosValue + v2.y * sinValue;
    result.z = v1.z * cosValue + v2.z * sinValue;

    gl_Position = vec4(aPos.x + xOffset*0.5, -aPos.y+yOffset*0.5, aPos.z, 1.0); 
    //ourColor = result;
    //ourColor = vec3(aColor.x*sin(timeValue)+0.5,aColor.y*cos(timeValue)+0.5,aColor.z*sin(timeValue))+0.5;
    ourColor = vec3(aColor.x,aColor.y,aColor.z);
    //ourColor = vec3(sin(timeValue)+0.5,0.0f,1.0f);
}