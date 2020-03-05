#================================================
# Ncurses | CentOs
#================================================
GNcurses_window(){}
#================================================
# creer une fenetre
WINDOW *newwin(int nlines, int ncols, int begin_y, int begin_x);
# creer une bordure
int box(WINDOW *win, chtype verch, chtype horch);
# lire les coordonnees de debut
void getbegyx(WINDOW *win, int y, int x);
# lire les coordonnees max
void getmaxyx(WINDOW *win, int y, int x);

#================================================
GNcurses_panel(){}
#================================================
my_panels[0] = new_panel(my_wins[0]); 	/* Push 0, order: stdscr-0 */
top_panel(top->next);
update_panels();
doupdate();
#================================================
GNcurses_item(){}
#================================================





