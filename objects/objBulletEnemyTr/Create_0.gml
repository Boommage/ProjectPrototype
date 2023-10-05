bulDir = 270
if Object2.lifeVal > 0
{
bulDir = point_direction(x, y, Object2.x, Object2.y)
}
motion_set(bulDir, 10);
