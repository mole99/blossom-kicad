$fn=64;

leafs = 12;
leafRadius = 6.5;

pcbRadius = 25; // mm
middleRadius = pcbRadius - leafRadius;
drillDistance = 17;

offsetAngle = 15;
r=0.6;g=0.0;b=0.4;a=0.8;


union()
{
    color([r,g,b,a]) circle(r=middleRadius);

    for ( i = [0 : leafs] )
    {
        rotate(a=[0,0,360/leafs*i + offsetAngle])
        {
          translate([0,middleRadius]) color([r,g,b,a]) circle(r=leafRadius);
        }
    }
}