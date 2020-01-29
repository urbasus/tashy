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

-- ****h* Widgets/Canvas
-- FUNCTION
-- Provides code for manipulate Tk widget Canvas
-- SOURCE
package Tcl.Tk.Ada.Widgets.Canvas is
-- ****

   -- ****t* Canvas/Tk_Canvas
   -- FUNCTION
   -- This is a non-abstract type derived directly from Tk_Widget.
   -- Each of the derived widgets redefines the Create subprogram
   -- in order to create the correct type of widget.
   -- SOURCE
   type Tk_Canvas is new Tk_Widget with private;
   -- ****

   -- ****f* Canvas/Create
   -- FUNCTION
   -- Creates a new Tk_Canvas in the specified interpreter.
   -- PARAMETERS
   -- Widgt    - Tk_Canvas which will be created
   -- pathName - Tk path (starts with dot) for the widget
   -- options  - Options which will be passed to the widget. Default value is
   --            empty
   -- Interp   - Tcl interpreter to which the widget will be created. If null,
   --            the widget will be created in the "contextual" interpreter.
   --            Default value is null.
   -- RESULT
   -- Newly created Tk_Canvas
   -- SOURCE
   function Create
     (pathName: in String; options: in String := "";
      Interp: in Tcl_Interp := null) return Tk_Canvas with
      Pre => pathName /= "";
   procedure Create
     (Widgt: out Tk_Canvas; pathName: in String; options: in String := "";
      Interp: in Tcl_Interp := null) with
      Pre => pathName /= "";
      -- ****

      -- ****f* Canvas/Canvas_Create
      -- FUNCTION
      -- Add the child to the canvas
      -- PARAMETERS
      -- Parent     - Tk_Canvas to which child will be added
      -- Child_Type - Tk type of child to add
      -- Options    - Tk options to create command
      -- SOURCE
   procedure Canvas_Create
     (Parent: in Tk_Canvas; Child_Type: in String;
      Options: in String := "") with
      Pre => Child_Type /= "";
      -- ****

private

   type Tk_Canvas is new Tk_Widget with null record;

end Tcl.Tk.Ada.Widgets.Canvas;