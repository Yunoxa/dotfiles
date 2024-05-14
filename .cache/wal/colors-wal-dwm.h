static const char norm_fg[] = "#f4ece5";
static const char norm_bg[] = "#140907";
static const char norm_border[] = "#aaa5a0";

static const char sel_fg[] = "#f4ece5";
static const char sel_bg[] = "#B0D7D6";
static const char sel_border[] = "#f4ece5";

static const char urg_fg[] = "#f4ece5";
static const char urg_bg[] = "#F7BFCE";
static const char urg_border[] = "#F7BFCE";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
