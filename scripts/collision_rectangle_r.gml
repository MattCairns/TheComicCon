global.result[0] = 0;
with (argument4) {
    // handle 'notme' argument:
    if (argument6) if (id == other.id) continue;
    // skip to next instance if not colliding:
    if (!collision_rectangle(argument0, argument1, argument2,
        argument3, id, argument5, false)) continue;
    // add to results:
    global.result[0] += 1;
    global.result[global.result[0]] = id;
}
return (global.result[0] > 0);
