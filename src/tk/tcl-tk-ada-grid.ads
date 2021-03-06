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

with Tcl.Tk.Ada.Widgets; use Tcl.Tk.Ada.Widgets;

-- ****h* TkAda/TkGrid
-- FUNCTION
-- Provides code for manipulate Tk command Grid
-- SOURCE
package Tcl.Tk.Ada.Grid is
-- ****

   -- ****f* TkGrid/Grid
   -- FUNCTION
   -- Add to the selected widget with selected options to grid
   -- PARAMETERS
   -- Slave   - Tk_Widget to add
   -- Options - Option to grid action. Default value is empty
   -- HISTORY
   -- 8.6.1 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   procedure Grid(Slave: in Tk_Widget'Class; Options: in String := "");
   -- ****

   -- ****f* TkGrid/Grid_Anchor (procedure)
   -- FUNCTION
   -- Set the anchor's direction for the selected grid
   -- PARAMETERS
   -- Master    - Tk_Widget which is set as grid
   -- Direction - Direction in which anchor of the grid should be set.
   -- HISTORY
   -- 8.6.2 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   procedure Grid_Anchor(Master: in Tk_Widget'Class; Direction: in String) with
      Pre => Direction /= "";
      -- ****

      -- ****f* TkGrid/Grid_Anchor (function)
      -- FUNCTION
      -- Get the anchor's direction of the selected grid
      -- PARAMETERS
      -- Master - Tk_Widget which is set as grid
      -- RESULT
      -- A direction in which the grid anchor is set
      -- HISTORY
      -- 8.6.2 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   function Grid_Anchor(Master: in Tk_Widget'Class) return String;
   -- ****

   -- ****f* TkGrid/Grid_BBox
   -- FUNCTION
   -- Get size of bounding box of the selected grid
   -- PARAMETERS
   -- Master  - Tk_Widget which is set as grid
   -- Column  - Starting column from which bounding box will be count. Default
   --           is empty
   -- Row     - Starting row from which bounding box will be count. Default is
   --           empty
   -- Column2 - Ending column from which bounding box will be count. Default
   --           is empty
   -- Row2    - Ending column from which bounding box will be count. Default
   --           is empty
   -- RESULT
   -- If all parameters are empty, return bounding box for whole grid. If
   -- only Column and Row specified, return box for the selected cell. If all
   -- parameters are specified, return box for selected cells.
   -- HISTORY
   -- 8.6.2 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   function Grid_BBox
     (Master: in Tk_Widget'Class; Column, Row, Column2, Row2: in String := "")
      return String;
   -- ****

   -- ****f* TkGrid/Column_Configure (procedure)
   -- FUNCTION
   -- Set column configuration options for Slave widget in Master grid.
   -- PARAMETERS
   -- Master  - Tk_Widget which is set as grid
   -- Slave   - Tk_Widget inside Master
   -- Options - Tk options for selected Slave
   -- HISTORY
   -- 8.6.1 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   procedure Column_Configure
     (Master, Slave: in Tk_Widget'Class; Options: in String) with
      Pre => Options /= "";
      -- ****

      -- ****f* TkGrid/Column_Configure (function)
      -- FUNCTION
      -- Get column configuration options for Slave widget in Master grid.
      -- PARAMETERS
      -- Master  - Tk_Widget which is set as grid
      -- Slave   - Tk_Widget inside Master
      -- RESULT
      -- String with column configuration options for selected Slave widget
      -- HISTORY
      -- 8.6.1 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   function Column_Configure(Master, Slave: in Tk_Widget'Class) return String;
   -- ****

   -- ****f* TkGrid/Grid_Configure
   -- FUNCTION
   -- Tells the grid how to configure the specified Slave window.
   -- PARAMETERS
   -- Slave   - Tk_Widget to configure
   -- Options - Grid options for the slave
   -- HISTORY
   -- 8.6.1 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   procedure Grid_Configure
     (Slave: in Tk_Widget'Class; Options: in String := "");
   -- ****

   -- ****f* TkGrid/Grid_Forget
   -- FUNCTION
   -- Removes the Slave window from the grid list for its master
   -- and unmaps their windows.
   -- PARAMETERS
   -- Slave - Tk_Widget to remove
   -- HISTORY
   -- 8.6.1 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   procedure Grid_Forget(Slave: in Tk_Widget'Class);
   -- ****

   -- ****f* TkGrid/Grid_Info
   -- FUNCTION
   -- Get grid options of the selected widget
   -- PARAMETERS
   -- Slave - Tk_Widget to query
   -- RESULT
   -- String with list whose elements are the current configuration
   -- state of the specified Slave window.
   -- HISTORY
   -- 8.6.1 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   function Grid_Info(Slave: in Tk_Widget'Class) return String;
   -- ****

   -- ****f* TkGrid/Grid_Location
   -- FUNCTION
   -- Get column and row number on selected screen point in the selected grid
   -- PARAMETERS
   -- Master - Tk_Widget which is set as grid
   -- X      - X coordinate of screen point to check
   -- Y      - Y coordinate of screen point to check
   -- RESULT
   -- Number of column and row at selected screen point. If point is on the
   -- or above the selected grid, return -1
   -- HISTORY
   -- 8.6.2 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   function Grid_Location
     (Master: in Tk_Widget'Class; X, Y: in String) return String with
      Pre => X /= "" and Y /= "";
      -- ****

      -- ****f* TkGrid/Grid_Propagate (procedure)
      -- FUNCTION
      -- Enable or disable propagation for the selected grid
      -- PARAMETERS
      -- Master - Tk_Widget which is set as grid to modify
      -- Value  - New value for propagation. 1, on, true enables, 0, off,
      --          false disable propagation.
      -- HISTORY
      -- 8.6.2 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   procedure Grid_Propagate(Master: in Tk_Widget'Class; Value: in String) with
      Pre => Value /= "";
      -- ****

      -- ****f* TkGrid/Grid_Propagate (function)
      -- FUNCTION
      -- Get current state of propagatio for the selected grid
      -- PARAMETERS
      -- Master - Tk_Widget which is set as grid to query
      -- RESULT
      -- 0 if propagation is disabled, otherwise 1
      -- HISTORY
      -- 8.6.2 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   function Grid_Propagate(Master: in Tk_Widget'Class) return String;
   -- ****

   -- ****f* TkGrid/Grid_Remove
   -- FUNCTION
   -- Removes the Slave window from the grid list for its master
   -- and unmaps their windows but remember their positions in the grid
   -- PARAMETERS
   -- Slave - Tk_Widget to remove
   -- HISTORY
   -- 8.6.2 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   procedure Grid_Remove(Slave: in Tk_Widget'Class);
   -- ****

   -- ****f* TkGrid/Row_Configure (procedure)
   -- FUNCTION
   -- Set row configuration options for Slave widget in Master grid.
   -- PARAMETERS
   -- Master  - Tk_Widget which is set as grid
   -- Slave   - Tk_Widget inside Master
   -- Options - Tk options for selected Slave
   -- HISTORY
   -- 8.6.1 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   procedure Row_Configure
     (Master, Slave: in Tk_Widget'Class; Options: in String) with
      Pre => Options /= "";
      -- ****

      -- ****f* TkGrid/Row_Configure (function)
      -- FUNCTION
      -- Get row configuration options for Slave widget in Master grid.
      -- PARAMETERS
      -- Master  - Tk_Widget which is set as grid
      -- Slave   - Tk_Widget inside Master
      -- RESULT
      -- String with row configuration options for selected Slave widget
      -- HISTORY
      -- 8.6.1 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   function Row_Configure(Master, Slave: in Tk_Widget'Class) return String;
   -- ****

   -- ****f* TkGrid/Grid_Size
   -- FUNCTION
   -- Get size of grid
   -- PARAMETERS
   -- Master - Tk_Widget which is set as grid
   -- RESULT
   -- First value is columns amount, second value is rows amount of the
   -- selected grid
   -- HISTORY
   -- 8.6.2 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   function Grid_Size(Master: in Tk_Widget'Class) return String;
   -- ****

   -- ****f* TkGrid/Grid_Slaves
   -- FUNCTION
   -- Get list of slaves in the selected grid
   -- PARAMETERS
   -- Master  - Tk_Widget which is set as grid
   -- Option  - Can be -row [number], -column [number] or empty. Default value
   --           is empty
   -- RESULT
   -- If Option is empty, return all slaves of the selected grid. If option
   -- is -row then return slaves in the selected row. If option is -column
   -- then return slaves in the selected column
   -- HISTORY
   -- 8.6.2 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   function Grid_Slaves
     (Master: in Tk_Widget'Class; Option: in String := "") return String;
   -- ****

end Tcl.Tk.Ada.Grid;
