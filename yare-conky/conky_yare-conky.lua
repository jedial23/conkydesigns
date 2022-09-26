--[[
Yare Conky Ver 1.10
Elaborado por @Jedial23 2019
Este código muestra por medio de Conky la actividad y recursos del sistema GNU/Linux de su preferencia usando la nueva sintáxis de código.
El nombre que le he puesto es para dedicar mi amor por la población donde crecí, San Francisco de Yare. Ubicada en el estado Miranda, Venezuela.
Yare Conky es una ligera y simple gráfica que indica valores más comunes el cual interesa saber
]]
conky.config = {
    alignment = 'top_left',
    background = true,
    default_color = '#ffffff',-- grey 5f5f5f 3F3F3F
    double_buffer = true,
    draw_borders = false,
    draw_outline = false,
    draw_shades = false,
    gap_x = 150,
    gap_y = 15,
    --maximum_width = 300,
    --minimum_width = 100,
    no_buffers = false,
    override_utf8_locale = true,
    own_window = true,
    own_window_title = 'conky',
    own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
    own_window_transparent = true,
    own_window_type = 'desktop',--# normal /override /desktop
    own_window_argb_visual = true, --Use in Gnome environment and most enable "own_window_argb_value"
    own_window_argb_value = 100, --When ARGB visuals are enabled, this use this to modify the alpha value used. Valid range is 0-255, where 0 is 0% opacity, and 255 is 100% opacity. 
    text_buffer_size = 8000,
    total_run_times = 0,
    update_interval = 0.5,
    uppercase = false,
    use_xft = true,
    xftalpha = 1,
    font = 'Ubuntu:pixelsize=10',

color0 = 'white',
color1 = 'ffaa00', --LIKE ORANGE --'0f8fff' --Blue 1
color2 = '49cfff', --LIKE BLUE
color3 = 'fffc8c', --YELLOW --'c1dfff' --Blue 2
color4 = 'fdffd4', --WHITE
color5 = '14de82'
};

conky.text = [[

###Time & Day###
${voffset -28}{$color3}${offset 1}${font Aliquam:size=105}${time %I:%M} ${font Aliquam:weight=Bold:size=20}${color1}${time %P}
${alignr}${color1}${font Aliquam:weight=Bold:size=18}${time %A}, ${offset 1}${font Aliquam:weight=Bold:size=18}${exec date +%e' de '%B}${font}
#${font size=12}${color}${exec 5 lsb_release -sir} 
${color5}KERNEL: ${color1}${kernel} 

###NETWORK IDENTIFICATION###
${font weight=Bold:size=16}${goto 76}${color5}${if_existing /proc/net/route wlp3s1}${wireless_essid wlp3s1}${else}${if_existing /proc/net/route enp4s0}Red Local${else}${if_existing /proc/net/route ppp0}USB Modem${else}${font size=18}${color5 red}${scroll 17 4 No hay conexión de red establecida}${endif}${endif}${endif}

###Systems###
${voffset -9}${offset 1}${color1}${font ConkyColors:size=9}o${font}${color5}${voffset -7}${offset 10}${font Aliquam:size=10:weight=Bold}${uptime}
${voffset 4}${offset 1}$color1${font ConkyColors:size=9}i${font Aliquam:size=10:weight=Bold} ${color5}raíz: ${color1}${fs_free_perc /root}%${color5} libre${font Aliquam:size=10:weight=Bold} ${color5}/ home: ${color1}${fs_free_perc /home}% ${color5}libre 
${voffset 4}${offset 1}$color1${font ConkyColors:size=9}e${font}$color5${voffset -7}${font Aliquam:size=10:weight=Bold} $cpu%
${voffset 4}${offset 1}$color1${font ConkyColors:size=9}g${font}$color5${voffset -7}${font Aliquam:size=10:weight=Bold} $memperc%${font}
${voffset 6}${offset 1}$color1${font ConkyColors:size=9}7${font}$color5${voffset -7}${font Aliquam:size=10:weight=Bold} ${hwmon 0 temp 1}°C${font}
####NETWORK###
${if_existing /proc/net/route wlp4
s0}${voffset 6}${offset 1}$color1${font ConkyColors}t${font}$color5${voffset -6}${font Aliquam:size=10:weight=Bold} ${downspeed wlp3s1}${font}
${voffset 6}${offset 1}$color1${font ConkyColors}s${font}$color5${voffset -6}${font Aliquam:size=10:weight=Bold} ${upspeed wlp3s1}${font}${else}${if_existing /proc/net/route enp4s0}
${voffset 6}${offset 1}$color1${font ConkyColors}t${font}$color5${voffset -6}${font Aliquam:size=10:weight=Bold} ${downspeed enp4s0}${font}
${voffset 6}${offset 1}$color1${font ConkyColors}s${font}$color5${voffset -6}${font Aliquam:size=10:weight=Bold} ${upspeed enp4s0}${font}${else}${if_existing /proc/net/route ppp0}
${voffset 6}${offset 1}$color1${font ConkyColors}t${font}$color5${voffset -6}${font Aliquam:size=10:weight=Bold} ${downspeed ppp0}${font}
${voffset 6}${offset 1}$color1${font ConkyColors}s${font}$color5${voffset -6}${font Aliquam:size=10:weight=Bold} ${upspeed ppp0}${font}${endif}${endif}${endif}
######BATTERY########
#${voffset 6}${offset 1}$color1${font ConkyColors}5${font}$color${voffset -6}${font Aliquam:size=10:weight=Bold} ${acpiacadapter BAT1} ${battery BAT1}

]]
