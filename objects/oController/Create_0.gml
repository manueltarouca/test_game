randomize();
draw_set_color(c_white);

enum cell_types{
	void,
	building,
	entity,
	resource
}

width_ = room_width div CELL_WIDTH;
height_ = room_height div CELL_HEIGHT;

grid_ = ds_grid_create(width_,height_);
ds_grid_set_region(grid_, 0, 0, width_, height_, cell_types.void);
ds_grid_set_region(grid_,5,5,width_-5,height_-5,cell_types.resource);
//