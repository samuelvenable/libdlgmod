/*

 MIT License

 Copyright © 2021-2024 Samuel Venable

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.

*/

#ifdef _WIN32 /* Windows */
#define EXPORTED_FUNCTION extern "C" __declspec(dllexport)
#else /* macOS, Linux, FreeBSD, DragonFly BSD, NetBSD, OpenBSD, Solaris, illumos */
#define EXPORTED_FUNCTION extern "C" __attribute__((visibility("default")))
#endif

EXPORTED_FUNCTION double show_message(char *str);
EXPORTED_FUNCTION double show_message_async(char *str);
EXPORTED_FUNCTION double show_message_cancelable(char *str);
EXPORTED_FUNCTION double show_message_cancelable_async(char *str);
EXPORTED_FUNCTION double show_question(char *str);
EXPORTED_FUNCTION double show_question_async(char *str);
EXPORTED_FUNCTION double show_question_cancelable(char *str);
EXPORTED_FUNCTION double show_question_cancelable_async(char *str);
EXPORTED_FUNCTION double show_attempt(char *str);
EXPORTED_FUNCTION double show_attempt_async(char *str);
EXPORTED_FUNCTION double show_error(char *str, double abort);
EXPORTED_FUNCTION double show_error_async(char *str, double abort);
EXPORTED_FUNCTION char *get_string(char *str, char *def);
EXPORTED_FUNCTION double get_string_async(char *str, char *def);
EXPORTED_FUNCTION char *get_password(char *str, char *def);
EXPORTED_FUNCTION double get_password_async(char *str, char *def);
EXPORTED_FUNCTION double get_integer(char *str, double def);
EXPORTED_FUNCTION double get_integer_async(char *str, double def);
EXPORTED_FUNCTION double get_passcode(char *str, double def);
EXPORTED_FUNCTION double get_passcode_async(char *str, double def);
EXPORTED_FUNCTION char *get_open_filename(char *filter, char *fname);
EXPORTED_FUNCTION double get_open_filename_async(char *filter, char *fname);
EXPORTED_FUNCTION char *get_open_filename_ext(char *filter, char *fname, char *dir, char *title);
EXPORTED_FUNCTION double get_open_filename_ext_async(char *filter, char *fname, char *dir, char *title);
EXPORTED_FUNCTION char *get_open_filenames(char *filter, char *fname);
EXPORTED_FUNCTION double get_open_filenames_async(char *filter, char *fname);
EXPORTED_FUNCTION char *get_open_filenames_ext(char *filter, char *fname, char *dir, char *title);
EXPORTED_FUNCTION double get_open_filenames_ext_async(char *filter, char *fname, char *dir, char *title);
EXPORTED_FUNCTION char *get_save_filename(char *filter, char *fname);
EXPORTED_FUNCTION double get_save_filename_async(char *filter, char *fname);
EXPORTED_FUNCTION char *get_save_filename_ext(char *filter, char *fname, char *dir, char *title);
EXPORTED_FUNCTION double get_save_filename_ext_async(char *filter, char *fname, char *dir, char *title);
EXPORTED_FUNCTION char *get_directory(char *dname);
EXPORTED_FUNCTION double get_directory_async(char *dname);
EXPORTED_FUNCTION char *get_directory_alt(char *capt, char *root);
EXPORTED_FUNCTION double get_directory_alt_async(char *capt, char *root);
EXPORTED_FUNCTION double get_color(double defcol);
EXPORTED_FUNCTION double get_color_async(double defcol);
EXPORTED_FUNCTION double get_color_ext(double defcol, char *title);
EXPORTED_FUNCTION double get_color_ext_async(double defcol, char *title);
EXPORTED_FUNCTION char *widget_get_caption();
EXPORTED_FUNCTION double widget_set_caption(char *str);
EXPORTED_FUNCTION char *widget_get_owner();
EXPORTED_FUNCTION double widget_set_owner(char *hwnd);
EXPORTED_FUNCTION char *widget_get_icon();
EXPORTED_FUNCTION double widget_set_icon(char *icon);
EXPORTED_FUNCTION char *widget_get_system();
EXPORTED_FUNCTION double widget_set_system(char *sys);
EXPORTED_FUNCTION char *widget_get_button_name(double type);
EXPORTED_FUNCTION double widget_set_button_name(double type, char *name);
EXPORTED_FUNCTION double widget_get_canceled();
EXPORTED_FUNCTION void RegisterCallbacks(char *arg1, char *arg2, char *arg3, char *arg4);

namespace dialog_module {

  int show_message(char *str);
  int show_message_cancelable(char *str);
  int show_question(char *str);
  int show_question_cancelable(char *str);
  int show_attempt(char *str);
  int show_error(char *str, bool abort);
  char *get_string(char *str, char *def);
  char *get_password(char *str, char *def);
  double get_integer(char *str, double def);
  double get_passcode(char *str, double def);
  char *get_open_filename(char *filter, char *fname);
  char *get_open_filename_ext(char *filter, char *fname, char *dir, char *title);
  char *get_open_filenames(char *filter, char *fname);
  char *get_open_filenames_ext(char *filter, char *fname, char *dir, char *title);
  char *get_save_filename(char *filter, char *fname);
  char *get_save_filename_ext(char *filter, char *fname, char *dir, char *title);
  char *get_directory(char *dname);
  char *get_directory_alt(char *capt, char *root);
  int get_color(int defcol);
  int get_color_ext(int defcol, char *title);
  char *widget_get_caption();
  void widget_set_caption(char *str);
  char *widget_get_owner();
  void widget_set_owner(char *hwnd);
  char *widget_get_icon();
  void widget_set_icon(char *icon);
  char *widget_get_system();
  void widget_set_system(char *sys);
  void widget_set_button_name(int type, char *name);
  char *widget_get_button_name(int type);
  bool widget_get_canceled();
  
} // namespace dialog_module


