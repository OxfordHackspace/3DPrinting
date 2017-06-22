/// @author = Iulian Arcus
/// Script to generate test samples with different wall thicknesses

wallSizes = [0.4,0.8,1.0,1.2,1.6,2.0];

width = 10;
length = 20;
height = 4;

module MakeTestCube(wallWidth= 0.4,x=10,y=5, z=3) 
difference()
{
    cube([x,y,z],center=true);
    cube([(x-(wallWidth*2)),(y-(wallWidth*2)),(z+0.1)],center=true);
}

for (index = [0:len(wallSizes)-1])
{
    translate([(width + 2)*index,0,0])
    {
        MakeTestCube(wallSizes[index],width,length,height);
    }
}    
