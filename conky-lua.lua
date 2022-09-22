conky.config = {
--Aligment
	alignment = 'top_right',
	gap_x = 35,
	gap_y = 25,

--Conky settings
	background = true,
	update_interval = 1,
	cpu_avg_samples = 2,
	net_avg_samples = 2,
	--default_color = '#FFFFFF',
	no_buffers = true,
	double_buffer = true,
	draw_borders = false,
	draw_outline = false,
	draw_shades = false,
	total_run_times = 0,
	--graph_scale_keep_max = true, --fix grahp scale oversize
	temperature_unit = 'celsius',
	--imlib_cache_size 0	

-- Window specifications #
	minimum_width = 200, 
	minimum_height = 250,
	maximum_width = 200,
	own_window = true,
	own_window_title = "Conky Lua",
	own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
	own_window_transparent = true,
	own_window_type = 'desktop',--# normal /override /desktop
	own_window_argb_visual = true, --Use in Gnome environment and most enable "own_window_argb_value"
	own_window_argb_value = 0, --When ARGB visuals are enabled, this use this to modify the alpha value used. Valid range is 0-255, where 0 is 0% opacity, and 255 is 100% opacity. 
	border_inner_margin = 0,
	border_outer_margin = 0,
	
-- Graphics settings #
	draw_shades = false,
	draw_outline = false,
	draw_borders = false,
	draw_graph_borders = false,

-- Text settings #
	text_buffer_size = 2048,
	override_utf8_locale = true,
	uppercase = false,
	use_xft = true,
	xftalpha = 0.8,
	font = 'Neuropolitical:size=8',
	

-- Lua Load  #
	lua_load = [[~/.conky/Conky-lua-2011-next_generation/Ubuntu/clock_rings.lua]],
	lua_draw_hook_pre = 'clock_rings',
};

conky.text = [[
${font Neuropolitical:size=42}${time %e}
${goto 100}${font Neuropolitical:size=18}${color FF3300}${voffset -75}${time %b}
${font Neuropolitical:size=10}${color FF3300}${voffset 15}${time %A}${color FF3300}${hr}
${goto 100}${font Neuropolitical:size=15}${color FFFFFF}${voffset -35}${time %Y}
${font Neuropolitical:size=30}${voffset 40}${alignc}${time %H}:${time %M}
${goto 175}${voffset -30}${font Neuropolitical:size=10}${time %S}
${voffset 10}${font Neuropolitical:size=11}${color FF3300}${alignr}HOME${font}
##${font Neuropolitical:size=13}${color FFFFFF}${alignr}temp: ${weather http://weather.noaa.gov/pub/data/observations/metar/stations/ LQBK temperature temperature 30} °C${font}
${hr}
${image ~/.conky/Conky-lua-2011-next_generation/Zorin-OS/logo.png -p 165,10 -s 35x35}
${color FFFFFF}${font Neuropolitical:size=8}Uptime: ${uptime_short}
${color FFFFFF}${font Neuropolitical:size=8}Processes: ${processes}
${color FFFFFF}${font Neuropolitical:size=8}Running: ${running_processes}

${color FF3300}${goto 125}${voffset 27}CPU
${color FFFFFF}${goto 125}${cpu cpu0}%
#${color FF3300}${goto 125}${voffset 27}CPU 2
#${color FFFFFF}${goto 125}${cpu cpu2}%
${color FF3300}${goto 125}${voffset 55}RAM
${color FFFFFF}${goto 125}${memperc}%
${color FF3300}${goto 125}${voffset 56}Swap
${color FFFFFF}${goto 125}${swapperc}%
${color FF3300}${goto 125}${voffset 57}Disk
${color FFFFFF}${goto 125}${fs_used_perc /}%
${color FF3300}${goto 130}${voffset 55}Network
${color FFFFFF}${goto 130}${downspeedf wlp1s0}
${color FFFFFF}${goto 130}${upspeedf wlp1s0}

${color FF3300}${font Neuropolitical:size=8}${alignr}${nodename}
#${color FF3300}${font Neuropolitical:size=8}${alignr}${pre_exec cat /etc/issue.net}  $machine
${color FF3300}${font Neuropolitical:size=8}${alignr}Kernel: ${kernel}
${hr}
]];
