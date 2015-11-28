// collision_line_r(x1, y1, x2, y2, obj, prec, notme)
//    argument ->   0   1   2   3   4    5     6
// Idential to collision_line, but will add matching
// instances to result[] array. Zero-index element will
// indicate length of array.
// Returns: if anything was found
global.result[0] = 0;
with (argument4) {
    // handle 'notme' argument:
    if (argument6) if (id == other.id) continue;
    // skip to next instance if not colliding:
    if (!collision_line(argument0, argument1, argument2,
        argument3, id, argument5, false)) continue;
    // add to results:
    global.result[0] += 1;
    global.result[global.result[0]] = id;
}
return (global.result[0] > 0);
