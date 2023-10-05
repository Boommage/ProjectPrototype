//for loop repeats until every rounds enemies are created
for (i = 0; i < array_length(enemy[0][0][r]); i+=4)
{
//creates the enemy
instance_create_layer(enemy[0][0][r][i+1],enemy[0][0][r][i+2],"Enemy",enemy[0][0][r][i]);
// assigns that specific enemy to the values in array
var iEnemy = instance_nearest(enemy[0][0][r][i+1],enemy[0][0][r][i+2],enemy[0][0][r][i]);
iEnemy.landVal = enemy[0][0][r][i+3];
//adds up how many enemies are in each round
c++;
counter = c;
}
