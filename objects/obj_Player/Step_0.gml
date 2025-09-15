// Gravidade
ySpeed += 0.1;

// Movimento horizontal
xSpeed = 0; // garante que para quando nenhuma tecla é pressionada
if keyboard_check(ord("D"))
{
    xSpeed = 1;
}
if keyboard_check(ord("A"))
{
    xSpeed = -1;
}

// Colisão com o chão
if place_meeting(x, y+1, obj_Floor)
{
    ySpeed = 0;
    if keyboard_check(vk_space)
    {
        ySpeed = -5; // pulo
    }
}

// Movimento final
move_and_collide(xSpeed, ySpeed, obj_Floor);


//Spikes and Flag

if place_meeting(x, y, obj_Cherry)
{
	room_goto_next();
}

if place_meeting(x, y, obj_Spike)
{
	room_restart();
}