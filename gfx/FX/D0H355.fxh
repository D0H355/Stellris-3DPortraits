Code
[[
    float hi  = 0.0f;

    float3 BoxBlur(float2 uv, float2 texelSize, float3 finalColor )
    {
        float3 color = float3(finalColor.rgb);
        int kernelSize = 3;
        int halfKernelSize = kernelSize / 2;

        for (int x = -halfKernelSize; x <= halfKernelSize; x++)
        {
            for (int y = -halfKernelSize; y <= halfKernelSize; y++)
            {
                float2 offset = float2(x, y) * texelSize;
                color += finalColor;
            }
        }

        color /= (kernelSize * kernelSize);
        return color;
    }

float3 BrightSpots(float3 finalColor, float bloomThreshold, float bloomIntesity)
{
    float3 output = finalColor * step(bloomThreshold, max(finalColor.r, max(finalColor.g, finalColor.b)));
    float3 finalOutput = output *= bloomIntesity;
    
    return finalOutput;
}
]]