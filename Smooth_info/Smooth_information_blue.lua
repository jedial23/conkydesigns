conky.config = {
-- By Jesse_Avalos see me on Eye Candy linux google plus !!!!!
	background = true,
	use_xft = true,
	font = 'ITC Avant Garde Gothic Pro:size=9',
	xftalpha = 0.8,
	update_interval = 1,
	total_run_times = 0,
	own_window = true,
	own_window_transparent = true,
--#############################################
-- Compositing tips:
-- Conky can play strangely when used with
-- different compositors. I have found the
-- following to work well, but your mileage
-- may vary. Comment/uncomment to suit.
--#############################################
--# no compositor
--own_window_type override
--own_window_argb_visual no

--# xcompmgr
    --own_window_type override
    own_window_argb_visual = true,

--# cairo-compmgr
	own_window_type = 'dock',
	own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
    own_window_argb_value = 192,
    --own_window_transparent = false,
	double_buffer = true,
	draw_shades = false,
	draw_outline = false,
	draw_borders = false,
	draw_graph_borders = false,
	stippled_borders = 0,
	--border_margin = '5',
	border_width = 1,
	default_color = '#000000',
	default_shade_color = '#000000',
	default_outline_color = '#000000',
	minimum_width = 0, minimum_height = 0,
	maximum_width = 600,
	gap_x = 105,
	gap_y = 120,
	alignment = 'top_left',
	no_buffers = true,
	uppercase = false,
	cpu_avg_samples = 2,
	net_avg_samples = 2,
	short_units = true,
	text_buffer_size = 2048,
	use_spacer = 'none',
	override_utf8_locale = true,
	default_color = '#CFCFCF',
	color1 = '#6b5503',
	color2 = '#121111',
	color3 = '#87e8e3',

	
	--own_window_colour = '#000000',
	--Calling lua script
	--lua_load = '~/.conky/Smooth_info/lua/script.lua',
	--lua_draw_hook_post  = 'main',
};

conky.text = [[
${goto 50}${color1}${font ITC Avant Garde Gothic Pro:bold:size=100} ${time %I}${font ITC Avant Garde Gothic Pro:size=25}${voffset -30}${time %P}${color3}${font ITC Avant Garde Gothic Pro:size=80}${voffset -23}${time %M}${color1}
${goto -10}${voffset -162}${font ITC Avant Garde Gothic Pro:size=22} ${time %a}
${goto 7}${voffset -1}${font ITC Avant Garde Gothic Pro:bold:size=22} ${time %b} 
${goto 23}${voffset 1}${color3}${font ITC Avant Garde Gothic Pro:bold:size=23}${time %d}${color1}${font ITC Avant Garde Gothic Pro:size=18}#
${goto 100}${voffset 19}${font ITC Avant Garde Gothic Pro:size=14}Kernel ${font ITC Avant Garde Gothic Pro:bold:size=14}${color3}${execi 360 uname -r}
${goto 430}${voffset -110}${color1}${font ITC Avant Garde Gothic Pro:size=12}Cpu Temp${font ITC Avant Garde Gothic Pro:bold:size=14}
${goto 440}${color3}${acpitemp} °C ${color1}


${goto 22}${voffset 40}${font ITC Avant Garde Gothic Pro:size=15}Mem:${color3} ${font ITC Avant Garde Gothic Pro:bold:size=15}$memperc%${color1}${font ITC Avant Garde Gothic Pro:size=15}

${goto 134}${voffset -42}Cpu:${color3} ${font ITC Avant Garde Gothic Pro:Bold:size=15}${cpu cpu0}%${color1}${font ITC Avant Garde Gothic Pro:size=15}

${if_existing /proc/net/route wlp4s0}${goto 240}${voffset -42}Wifi: ${font ITC Avant Garde Gothic Pro:bold:size=15}${color3}${wireless_link_qual wlp4s0}%${color1}${font ITC Avant Garde Gothic Pro:size=15}${goto 338}${voffset -10}${font ConkyColors:size=8}t ${font ITC Avant Garde Gothic Pro:bold:size=8}${color3}${downspeed wlp4s0}
${goto 338}${font ConkyColors:size=8}${color1}s ${font ITC Avant Garde Gothic Pro:bold:size=8}${color3}${upspeed wlp4s0}${else}${if_match /proc/net/route enp5s0}${goto 240}${voffset -42}LAN: ${color1}${font ITC Avant Garde Gothic Pro:size=15}${goto 338}${voffset -10}${font ConkyColors:size=8}t ${font ITC Avant Garde Gothic Pro:bold:size=8}${color3}${downspeed enp5s0}
${goto 338}${font ConkyColors:size=8}${color1}s ${font ITC Avant Garde Gothic Pro:bold:size=8}${color3}${upspeed enp5s0}${endif}${endif}#--


${if_existing BAT0}${goto 395}${voffset -30}${font ITC Avant Garde Gothic Pro:size=15}${color1}Battery:${color3} ${font ITC Avant Garde Gothic Pro:bold:size=15}${battery_percent BAT0}% ${font ITC Avant Garde Gothic Pro:size=15}${endif}#--${short_battery BAT0}

${goto 430}${voffset -95}${color1}${font ITC Avant Garde Gothic Pro:size=14}HDD I/O
${goto 440}${color1}${font ITC Avant Garde Gothic Pro:size=9}R ${color3}${font ITC Avant Garde Gothic Pro:bold:size=9}${diskio_read}#--
${goto 440}${color3}${voffset 15}${color1}${font ITC Avant Garde Gothic Pro:size=9}W ${color3}${font ITC Avant Garde Gothic Pro:bold:size=9}${diskio_write}













]];
