var d = width / 2;

var scr = d;
var mscr = d / 2;
var mcr = d / 8;
var rr = 2;

var r = random(255);
var g = random(255);
var b = random(255);
var o = min(255 - r, 255 - g, 255 - b);

var c1 = make_color_rgb(r, g, b);
var c2 = make_color_rgb(r + o, g + o, b + o);

var surface = surface_create(range * 64, width);
surface_set_target(surface);
draw_clear_alpha(c_black, 0);

draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(7, 3, c1, 1);
draw_vertex_color(rr * 64, 0, c1, 1);

//draw_vertex_color(1, scr - mscr + 1, make_color_rgb(200, 255, 255), 1);
//draw_vertex_color(rr * 64, scr - mscr, make_color_rgb(200, 255, 255), 1);
draw_vertex_color(1, scr - mscr + 1, c2, 1);
draw_vertex_color(rr * 64, scr - mscr, c2, 1);

draw_vertex_color(0, scr - mcr, c_white, 1);
draw_vertex_color(rr * 64, scr - mcr, c_white, 1);
draw_vertex_color(0, width - scr + mcr, c_white, 1);
draw_vertex_color(rr * 64, width - scr + mcr, c_white, 1)

//draw_vertex_color(1, width - scr + mscr - 1, make_color_rgb(200, 255, 255), 1);
//draw_vertex_color(rr * 64, width - scr + mscr, make_color_rgb(200, 255, 255), 1);
draw_vertex_color(1, width - scr + mscr - 1, c2, 1);
draw_vertex_color(rr * 64, width - scr + mscr, c2, 1);

draw_vertex_color(7, width - 3, c1, 1);
draw_vertex_color(rr * 64, width, c1, 1);
draw_primitive_end();

draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(rr * 64, 0, c1, 1);
draw_vertex_color(range * 64, 0, c1, 1);

//draw_vertex_color(rr * 64, scr - mscr, make_color_rgb(200, 255, 255), 1);
//draw_vertex_color(range * 64, scr - mscr, make_color_rgb(200, 255, 255), 1);
draw_vertex_color(rr * 64, scr - mscr, c2, 1);
draw_vertex_color(range * 64, scr - mscr, c2, 1);

draw_vertex_color(rr * 64, scr - mcr, c_white, 1);
draw_vertex_color(range * 64, scr - mcr, c_white, 1);
draw_vertex_color(rr * 64, width - scr + mcr, c_white, 1);
draw_vertex_color(range * 64, width - scr + mcr, c_white, 1)

//draw_vertex_color(rr * 64, width - scr + mscr, make_color_rgb(200, 255, 255), 1);
//draw_vertex_color(range * 64, width - scr + mscr, make_color_rgb(200, 255, 255), 1);
draw_vertex_color(rr * 64, width - scr + mscr, c2, 1);
draw_vertex_color(range * 64, width - scr + mscr, c2, 1);

draw_vertex_color(rr * 64, width, c1, 1);
draw_vertex_color(range * 64, width, c1, 1);
draw_primitive_end();

sprite = sprite_create_from_surface(surface, 0, 0, range * 64, width, true, true, range * 64, width / 2);
surface_reset_target();
surface_free(surface);

sprite_collision_mask(sprite, true, bboxmode_automatic, 0, 0, range * 64, width, bboxkind_rectangular, 0);