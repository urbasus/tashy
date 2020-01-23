-- Copyright (c) 2020 Bartek thindil Jasicki <thindil@laeran.pl>
--
-- Tashy is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
--
-- As a special exception, if other files instantiate generics from this
-- unit, or you link this unit with other files to produce an executable,
-- this unit does not by itself cause the resulting executable to be
-- covered by the GNU General Public License. This exception does not
-- however invalidate any other reasons why the executable file might be
-- covered by the GNU Public License.

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Tcl.Tk.Ada.Widgets.Toplevel; use Tcl.Tk.Ada.Widgets.Toplevel;

-- ****h* TkAda/Dialogs
-- FUNCTION
-- Provides code for manipulate Tk dialogs widgets
-- SOURCE
package Tcl.Tk.Ada.Dialogs is
-- ****

   type DialogButtons is array(Positive range <>) of Unbounded_String;

   -- ****f* Dialogs/Choose_Directory
   -- FUNCTION
   -- Create dialog which allow the user select directory.
   -- PARAMETERS
   -- Options - Tk options which will be passed to the dialog. Default value
   --           is empty string
   -- RESULT
   -- Name of selected directory or empty string if directory was not selected
   -- SOURCE
   function Choose_Directory(Options: in String := "") return String;
   -- ****

   -- ****f* Dialogs/Dialog
   -- FUNCTION
   -- Create the dialog from selected Tk_Toplevel widget
   -- PARAMETERS
   -- Widget  - Tk_Toplevel widget which will be used as the dialog.
   -- Title   - Title of the dialog
   -- Text    - Text to display in the dialog
   -- Bitmap  - Tk bitmap name to show in dialog
   -- Default - Default button in dialog. Buttons counts from 0. If less than
   --           0 no button will be set as default.
   -- Buttons - Array with text to show on buttons. One element is one button
   -- RESULT
   -- Index of button which was clicked or -1 if no button was clicked.
   -- SOURCE
   function Dialog
     (Widget: in out Tk_Toplevel; Title, Text, Bitmap: in String;
      Default: in Integer; Buttons: in DialogButtons) return Integer with
      Pre =>
      (Title /= "" and Text /= "" and Bitmap /= "" and
       Default <= Buttons'Length);
      -- ****

      -- ****f* Dialogs/Get_Open_File
      -- FUNCTION
      -- Create dialog which allow the user select file to open.
      -- PARAMETERS
      -- Options - Tk options which will be passed to the dialog. Default value
      --           is empty string
      -- RESULT
      -- Name of selected file or empty string if no file was selected
      -- SOURCE
   function Get_Open_File(Options: in String := "") return String;
   -- ****

   -- ****f* Dialogs/Get_Save_File
   -- FUNCTION
   -- Create dialog which allow the user select file to save.
   -- PARAMETERS
   -- Options - Tk options which will be passed to the dialog. Default value
   --           is empty string
   -- RESULT
   -- Name of selected file or empty string if no file was selected
   -- SOURCE
   function Get_Save_File(Options: in String := "") return String;
   -- ****

   -- ****f* Dialogs/MessageBox
   -- FUNCTION
   -- Create message window and show it to user
   -- PARAMETERS
   -- Options - Tk options which will be passed to the dialog. Default value
   --           is empty string
   -- RESULT
   -- Symbolic name of the clicked button
   -- SOURCE
   function MessageBox(Options: in String := "") return String;
   -- ****

end Tcl.Tk.Ada.Dialogs;