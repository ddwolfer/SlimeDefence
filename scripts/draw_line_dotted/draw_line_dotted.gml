///@arg x1
///@arg y1
///@arg x2
///@arg y2
///@arg step

function draw_line_dotted(){
/// draw_line_DDA_ext(x1, y1, x2, y2, step)

var sx = argument0;
var sy = argument1;
var tx = argument2;
var ty = argument3;
var step = argument4;

var xr = abs(tx - sx);
var yr = abs(ty - sy);

if (xr > yr)
    var l = xr;
else
    var l = yr;

var px = (sx << 12) + (1 << 11);
var py = (sy << 12) + (1 << 11);
var ex = (tx << 12) + (1 << 11);
var ey = (ty << 12) + (1 << 11);

if (l != 0)
{
    var dx = (ex - px) / l;
    var dy = (ey - py) / l;
}
else
{
    var dx = 0;
    var dy = 0;
}

if step < 1
{
    // Draw solid line
    for (var i=0; i<=l; i++)
    {
        //draw_circle(px >> 12, py >> 12,1,0);
        px += dx;
        py += dy;
    }
}
else
{
    // Draw dashed line
    var cnt = 0;
    for (var i=0; i<=l; i++)
    {
        var posx = px >> 12;
        var posy = py >> 12;
        if cnt < step
            draw_circle(posx, posy,1,0);
        cnt = (cnt + 1) mod (step * 2);
        px += dx;
        py += dy;
    }
}
}