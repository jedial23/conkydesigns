conky.config = {
	alignment = 'top_right',
	background = true,
	--border_margin = '5',
	--border_width = 5,
	default_color = '#ffffff',-- grey 5f5f5f 3F3F3F
	double_buffer = true,
	draw_borders = false,
	draw_outline = false,
	draw_shades = false,
	gap_x = 10,
	gap_y = 45,
	maximum_width = 340,
	minimum_width = 175,
	no_buffers = true,
	override_utf8_locale = true,
	own_window = true,
	own_window_title = 'conky',
	own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
	own_window_transparent = true,
	own_window_type = 'desktop',--# normal /override /desktop
	own_window_argb_visual = true, --Use in Gnome environment and most enable "own_window_argb_value"
	own_window_argb_value = 0, --When ARGB visuals are enabled, this use this to modify the alpha value used. Valid range is 0-255, where 0 is 0% opacity, and 255 is 100% opacity. 
	text_buffer_size = 8000,
	total_run_times = 0,
	update_interval = 0.5,
	uppercase = false,
	use_xft = true,
	xftalpha = 1,
	draw_graph_borders = false, --activate/deactivate borders graphs
	show_graph_scale = false,
    show_graph_range = false,
	--graph_scale_keep_max = true, --fix grahp scale oversize
	font = 'Ubuntu:pixelsize=10',

--				fonts
--	Blue Highway
--	Zegoe Light - U
--	Zekton
--	Calibri
--	Engebrechtre
--	Opeln2001
--     Colors
color0 = 'white',
color1 = '0f8fff', --Blue 1
color2 = '49cfff', --LIKE BLUE
color3 = 'c1dfff', --Blue 2
color4 = 'fdffd4', --WHITE
ConkyColors,
};


conky.text = [[
##Note: A=linux symbol U=Mint symbol
${alignc}${color3}${font ConkySymbols:pixelsize=46}U${font} 
##DATE settings
${color1}${font Future:pixelsize=56:bold} ${time %H}:${font future:pixelsize=45}${color3}${time %M}${color4}${font}${goto 140}${font Future:pixelsize=16:bold}:${time %S}${font}

${font AnabelleScript:pixelsize=31}${alignc}${color3}${time  %d de %B de %Y}
${alignc}${time %A}${font}

#${alignc}${color4}${font ConkyColors:size=12}5 ${font}${battery BAT1} ${acpiacadapter BAT1} ${battery_time BAT1}
${color4}UPTIME: ${color1}${uptime}
${color4}KERNEL: ${color1}${kernel}

#${if_up wlp3s1}${else}No Connect ${endif}
##CPU Settings
${color3}${font ConkyColors:size=12}e${font} CPU activity $hr
${color4}CPU FREQ: ${color1}${freq_g cpu0} GHz ${color4} TEMP: ${color1}${acpitemp} °C
${color4}CPU 1 USED: ${color1}${cpu cpu0}% ${goto 90}${color4}CPU 2 USED: ${color1}${cpu cpu1}%
${color4}CPU 3 USED: ${color1}${cpu cpu2}% ${goto 90}${color4}CPU 4 USED: ${color1}${cpu cpu3}%
${color4}CPU 5 USED: ${color1}${cpu cpu4}% ${goto 90}${color4}CPU 6 USED: ${color1}${cpu cpu5}%
${color4}CPU 7 USED: ${color1}${cpu cpu6}% ${goto 90}${color4}CPU 8 USED: ${color1}${cpu cpu7}%

${color4}${top name 1}${goto 90}${color3}${top cpu 1}%
${color4}${top name 2}${goto 90}${color3}${top cpu 2}%
${color4}${top name 3}${goto 90}${color3}${top cpu 3}%

## MEMORY settings
${color3}${font ConkyColors:size=12:bold}g${font} MEMORY $hr
${color4}SWAP:  ${color1}${swap} ${goto 77}/ ${swapmax}${goto 117} ${color4}USED: ${color1}${swapperc}%
${color4}RAM:  ${color1}${mem} ${goto 70}/ ${memmax}${goto 115} ${color4}USED: ${color1}${memperc}%

${color4}${top_mem name 1}${goto 90}${color3}${top_mem mem 1}%
${color4}${top_mem name 2}${goto 90}${color3}${top_mem mem 2}%
${color4}${top_mem name 3}${goto 90}${color3}${top_mem mem 3}%

#STORAGE
${color3}${font ConkyColors:size=12}i${font} STORAGE $hr
${color4}ROOT: ${color1}${fs_used /root} / ${fs_size /root}${goto 130} ${color4}FREE: ${color1}${fs_free_perc /root}%
${color4}HOME: ${color1}${fs_used /home} / ${fs_size /home}${goto 130} ${color4}FREE: ${color1}${fs_free_perc /home}% 
${color4}TEMP: ${color1}${fs_used /tmp} / ${fs_size /tmp}${goto 130} ${color4}FREE: ${color1}${fs_free_perc /tmp}%
${color4}READ: ${color1}${diskio_read /dev/sda} ${goto 75}${color4}WRITE: ${color1}${diskio_write /dev/sda}
#PROCESS
 
##Network settings
${color3}${font ConkySymbols:size=10}i${font} NETWORK $hr
${if_existing /proc/net/route wlp3s1}
${font ConkyColors:size=10}k${font}${color4} ${color1}${wireless_essid wlp3s1} 
${color3}Signal Str: ${color1}${wireless_link_qual_perc wlp3s1}%
${color3}${font ConkyColors:size=12}s${font}${color1}${goto 30}${upspeed wlp3s1} $color3 ${alignr}${voffset -12}${upspeedgraph wlp3s1 20,80 color3 color4}
${color3}${font ConkyColors:size=12}t${font}${color1}${goto 30}${downspeed wlp3s1} $color3 ${alignr}${voffset -12}${downspeedgraph wlp3s1 20,80 color3 color4}

${color4}Total Up: ${color1}${totalup wlp3s1} ${color4}/ Total Down: ${color1}${totaldown wlp3s1}
${color4}Local IP ${color1}${addr wlp3s1}
${else}${if_existing /proc/net/route enp4s0}
${font ConkySymbols:size=9}i${font}${color4} LAN
${color3}${font ConkyColors:size=12}s${font}${color1}${goto 30}${color1}${upspeed enp4s0}
${color3}${font ConkyColors:size=12}t${font}${color1}${goto 30}${color1}${downspeed enp4s0}
$color3 ${downspeedgraph enp4s0 20,200 color3 color4}
${color4}Total Up: ${color1}${totalup enp4s0} / Total Down: ${totaldown enp4s0}
${color4}Local IP ${color1}${addr enp4s0}
${else}${if_existing /proc/net/route ppp0}
${font ConkySymbols:size=9}i${font}${color4} USB MODEM
${color3}${font ConkyColors:size=12}s${font}${color1}${goto 30}${color1}${upspeed ppp0}
${color3}${font ConkyColors:size=12}t${font}${color1}${goto 30}${color1}${downspeed ppp0}
$color3 ${downspeedgraph ppp0 20,200 color3 color4}
${color4}Total Up: ${color1}${totalup ppp0} / Total Down: ${totaldown ppp0}
${color4}Local IP ${color1}${addr ppp0}${endif}${endif}${endif}

${color3}$hr

#${color4}Public IP ${color1}${execi 3600 wget -q -O - checkip.dyndns.org | sed -e 's/[^[:digit:]\|.]//g'}
]];
