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

package body Tcl.Tk.Ada.Widgets.Menu is

   function Create
     (pathName: in String; options: in String := "") return Tk_Menu is
   begin --  Create
      return Create(Context, pathName, options);
   end Create;

   procedure Create
     (Widgt: out Tk_Menu; pathName: in String; options: in String := "") is
   begin --  Create
      Widgt := Create(Context, pathName, options);
   end Create;

   function Create
     (Interp: in Tcl_Interp; pathName: in String; options: in String := "")
      return Tk_Menu is
      --
      The_Widget: Tk_Menu;
   begin --  Create
      The_Widget.Interp := Interp;
      The_Widget.Name := C.Strings.New_String(pathName);
      Tcl_Eval(The_Widget.Interp, "menu " & pathName & " " & options);
      return The_Widget;
   end Create;

   procedure Create
     (Widgt: out Tk_Menu; Interp: in Tcl_Interp; pathName: in String;
      options: in String := "") is
   begin --  Create
      Widgt := Create(Interp, pathName, options);
   end Create;

   procedure Add
     (MenuWidget: in Tk_Menu'Class; WidgetType: in String;
      Options: in String := "") is
   begin
      Execute_Widget_Command
        (Tk_Widget'Class(MenuWidget), "add", WidgetType & " " & Options);
   end Add;

end Tcl.Tk.Ada.Widgets.Menu;
