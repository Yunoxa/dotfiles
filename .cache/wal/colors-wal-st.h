const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#140907", /* black   */
  [1] = "#F7BFCE", /* red     */
  [2] = "#B0D7D6", /* green   */
  [3] = "#B3DDDC", /* yellow  */
  [4] = "#B3DDDC", /* blue    */
  [5] = "#B9DFDE", /* magenta */
  [6] = "#E0D5D3", /* cyan    */
  [7] = "#f4ece5", /* white   */

  /* 8 bright colors */
  [8]  = "#aaa5a0",  /* black   */
  [9]  = "#F7BFCE",  /* red     */
  [10] = "#B0D7D6", /* green   */
  [11] = "#B3DDDC", /* yellow  */
  [12] = "#B3DDDC", /* blue    */
  [13] = "#B9DFDE", /* magenta */
  [14] = "#E0D5D3", /* cyan    */
  [15] = "#f4ece5", /* white   */

  /* special colors */
  [256] = "#140907", /* background */
  [257] = "#f4ece5", /* foreground */
  [258] = "#f4ece5",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
