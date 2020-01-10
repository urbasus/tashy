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

-- ****h* Widgets/Toplevel
-- FUNCTION
-- Provides code for manipulate Tk widget Toplevel
-- SOURCE
package Tcl.Tk.Ada.Widgets.Toplevel is
-- ****

   type Tk_Toplevel is new Tk_Widget with private;

   -- ****f* Toplevel/Create
   -- FUNCTION
   -- Creates a new Tk_Toplevel in the specified interpreter. If interpreter
   -- is null, use "contextual" interpreter. Options may be specified via the
   -- "options" parameter or the option database to configure the widget.
   -- SOURCE
   function Create
     (pathName: in String; options: in String := "";
      Interp: in Tcl_Interp := null) return Tk_Toplevel;
   procedure Create
     (Widgt: out Tk_Toplevel; pathName: in String; options: in String := "";
      Interp: in Tcl_Interp := null);
   -- ****

private

   type Tk_Toplevel is new Tk_Widget with null record;

end Tcl.Tk.Ada.Widgets.Toplevel;