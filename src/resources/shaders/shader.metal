#include <metal_stdlib>
using namespace metal;

struct v2f{
    float4 position [[position]];
    float4 color;
};

v2f vertex vertexMain( uint vertexId [[vertex_id]], device const float3* positions [[buffer(0)]], device const float3* colors [[buffer(1)]]) {
    v2f o;
    o.position = float4(positions[ vertexId ], 1.0);
    o.color = float4(colors[vertexId], 1.0);
    return o;
}

float4 fragment fragmentMain( v2f in [[stage_in]] ){
    return in.color;
}