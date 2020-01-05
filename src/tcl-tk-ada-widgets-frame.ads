-- Copyright (c) 2020 Bartek thindil Jasicki <thindil@laeran.pl>
--
-- This program is free software: you can redistribute it and/or modify
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

-- ****h* Tashy/Frame
-- FUNCTION
-- Provides code for manipulate Tk widget Frame
-- SOURCE
package Tcl.Tk.Ada.Widgets.Frame is
-- ****

   -- ****t* Frame/Tk_Frame
   -- FUNCTION
   -- This is a non-abstract type derived directly from Tk_Widget.
   -- Each of the derived widgets redefines the Create subprogram
   -- in order to create the correct type of widget.
   -- SOURCE
   type Tk_Frame is new Tk_Widget with private;
   -- ****

   -- ****f* Frame/Create
   -- FUNCTION
   -- Creates a new widget in the "contextual" interpreter and makes
   -- it into a frame widget.  Options may be specified via the "options"
   -- parameter or the option database to configure the widget.
   -- SOURCE
   function Create
     (pathName: in String; options: in String := "") return Tk_Frame;
   procedure Create
     (Widgt: out Tk_Frame; pathName: in String; options: in String := "");
   -- ****

   -- ****f* Frame/Create2
   -- FUNCTION
   -- Creates a new widget in the specified interpreter and makes it
   -- into a frame widget.  Options may be specified via the "options"
   -- parameter or the option database to configure the widget.
   -- SOURCE
   function Create
     (Interp: in Tcl_Interp; pathName: in String; options: in String := "")
      return Tk_Frame;
   procedure Create
     (Widgt: out Tk_Frame; Interp: in Tcl_Interp; pathName: in String;
      options: in String := "");
   -- ****

   -- ****f* Frame/Get_Main_Window
   -- FUNCTION
   -- Get main window of the specified interpreter
   -- SOURCE
   function Get_Main_Window(Interp: in Tcl_Interp) return Tk_Frame;
   -- ****

private

   type Tk_Frame is new Tk_Widget with null record;

end Tcl.Tk.Ada.Widgets.Frame;
