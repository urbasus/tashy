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

-- ****h* Widgets/Label
-- FUNCTION
-- Provides code for manipulate Tk widget Label
-- SOURCE
package Tcl.Tk.Ada.Widgets.Label is
-- ****

   type Tk_Label is new Tk_Widget with private;

   -- ****f* Label/Create
   -- FUNCTION
   -- Creates a new Tk_Label in the specified interpreter. If interpreter
   -- is null, use "contextual" interpreter. Options may be specified via the
   -- "options" parameter or the option database to configure the widget.
   -- SOURCE
   function Create
     (pathName: in String; options: in String := "";
      Interp: in Tcl_Interp := null) return Tk_Label;
   procedure Create
     (Widgt: out Tk_Label; pathName: in String; options: in String := "";
      Interp: in Tcl_Interp := null);
   -- ****

private

   type Tk_Label is new Tk_Widget with null record;

end Tcl.Tk.Ada.Widgets.Label;