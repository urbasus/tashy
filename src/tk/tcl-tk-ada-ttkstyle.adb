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

with Tcl.Ada; use Tcl.Ada;

package body Tcl.Tk.Ada.TtkStyle is

   function Theme_Names return String is
   begin
      Tcl_Eval(Get_Context, "ttk::style theme names");
      return Tcl_GetResult(Get_Context);
   end Theme_Names;

   procedure Theme_Use(ThemeName: in String) is
   begin
      Tcl_Eval(Get_Context, "ttk::style theme use " & ThemeName);
   end Theme_Use;

   function Theme_Use return String is
   begin
      Tcl_Eval(Get_Context, "ttk::style theme use");
      return Tcl_GetResult(Get_Context);
   end Theme_Use;

   procedure Style_Configure(Name, Options: in String) is
   begin
      Tcl_Eval(Get_Context, "ttk::style configure " & Name & " " & Options);
   end Style_Configure;

end Tcl.Tk.Ada.TtkStyle;