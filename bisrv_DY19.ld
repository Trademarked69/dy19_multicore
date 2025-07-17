/* libc */
strcat	= 0x801b0b64;
strncmp	= 0x801b0c00;
strncpy	= 0x801b0cd8;
strchr	= 0x801b0da8;
strrchr	= 0x801b0e38;
strstr	= 0x801b0e58;
strcasecmp	= 0x801b0eac;
strncasecmp	= 0x801b0f2c;
memchr	= 0x801b0f8c;
tolower	= 0x801b0fbc;
toupper	= 0x801b0fdc;
isalnum	= 0x801b0ffc;
isalpha	= 0x801b1014;
isascii	= 0x801b102c;
iscntrl	= 0x801b1034;
isdigit	= 0x801b104c;
isgraph	= 0x801b1064;
islower	= 0x801b107c;
isprint	= 0x801b1094;
ispunct	= 0x801b10ac;
isspace	= 0x801b10c4;
isupper	= 0x801b10dc;
isxdigit	= 0x801b10f4;
toascii	= 0x801b110c;
_tolower	= 0x801b1114;
_toupper	= 0x801b111c;
isnan	= 0x801b1124;
isinf	= 0x801b1170;
strtol	= 0x801b11c0;
strtoul	= 0x801b13b0;

sbrk	= 0x80291f80;	/* TODO: exposing and using sbrk might be dangerous? */

malloc	= 0x80292240;
free	= 0x80292e50;
realloc	= 0x80292f14;
calloc	= 0x802931cc;

vsnprintf	= 0x80294c60;
sprintf	= 0x80294d14;
vprintf	= 0x80294dbc;
printf	= 0x80294dfc;
snprintf	= 0x80294e24;
vsprintf	= 0x80294e44;
rand	= 0x80294ef4;
memcpy	= 0x80294fa8;
memset	= 0x802951d8;
memcmp	= 0x802952b8;
memmove	= 0x8029531c;
strcpy	= 0x802953e8;
strcmp	= 0x80295428;
strlen	= 0x8029546c;
atoi	= 0x80295494;
time	= 0x8029573c;
localtime	= 0x80295984;
vsscanf	= 0x80296d58;
sscanf	= 0x80296d98;

/* these are actually fs_ variants but ABI is the same */
open	= 0x802abd80;
read	= 0x802ac178;
write	= 0x802ac29c;
lseek	= 0x802ac3bc;
close	= 0x802ac4fc;

fs_access = 0x802ac010;

fs_fstat = 0x802ac0a8;
fs_stat  = 0x802ac0cc;
fs_mkdir = 0x802abedc;

fs_opendir  = 0x802abe50;
fs_closedir = 0x802ac518;
fs_readdir  = 0x802ac460;

fs_sync = 0x802abc58;

strdup	= 0x802b2eb4; /* only needed for vfs it seems */
fclose	= 0x802b2f68;
fflush	= 0x802b30d8; /* actually __fflush but sufficiently close */
fopen	= 0x802b354c;
fw_fread = 0x802b36c0;
fseeko	= 0x802b382c;
ftell	= 0x802b3f44;
ftello	= 0x802b3f60;
fwrite	= 0x802b42d4;
fgets	= 0x802b3234;

/* TDS2 */
osal_tds2_cache_flush	= 0x8004920c;
os_disable_interrupt	= 0x802e0778;
os_enable_interrupt		= 0x802e07a0;

dly_tsk	= 0x8030f4a8;

os_get_tick_count = 0x8030fef0;

/* drivers */
get_vp_init_low_lcd_para	= 0x801b9d48;
switch_lcd_or_tv	= 0x801b9e0c;

vpo_ioctl	= 0x802777e4;

osddrv_open	= 0x80278050;
osddrv_close	= 0x80278130;
osddrv_3x_create_region	= 0x80278844;
osddrv_3x_region_write	= 0x8027913c;
osddrv_scale	= 0x80279460;

dev_get_by_id	= 0x802779d0;

st7789v_caset_raset	= 0x802a0a10;
st7789v_ramwr	= 0x802a0ab4;

/* libretro frontend */
run_osd_region_write	= 0x8035b840;
run_screen_write	= 0x8035b8bc;
run_sound_advance	= 0x8035b9cc;

retro_video_refresh_cb	= 0x8035cf50;
retro_audio_sample_batch_cb	= 0x8035d01c;
retro_input_poll_cb	= 0x8035d274;
retro_input_state_cb	= 0x8035d364;
retro_environment_cb	= 0x8035d3a8;

run_emulator	= 0x8035d590;
run_gba			= 0x8035e99c;

/* .rodata */

_ctype_	= 0x8099b8ec;

/* .data */
RAMSIZE	= 0x80be5e74;

g_errno	= 0x80be6618;

g_snd_task_flags	= 0x80be77e4;

g_retro_game_info	= 0x80be78e0;

gfn_state_load	= 0x80beca2c;
gfn_state_save	= 0x80beca7c;

gfn_retro_get_region	= 0x80beca58;
gfn_get_system_av_info	= 0x80beca68;
gfn_retro_load_game	= 0x80beca88;
gfn_retro_unload_game	= 0x80beca90;
gfn_retro_run	= 0x80becaa0;
gfn_frameskip	= 0x80beca9c;

g_run_file_size	= 0x80beca38;
gp_buf_64m	= 0x80beca94;

/* HiChip's hardware wired to LCD for UARTless debug.c */
PINMUXL	= 0xb88004a0;
PINMUXT	= 0xb8800500;
GPIOLCTRL	= 0xb8800044;
GPIOTCTRL	= 0xb8800344;