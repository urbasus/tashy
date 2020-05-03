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

-- As a special exception, if other files instantiate generics from this
-- unit, or you link this unit with other files to produce an executable,
-- this unit does not by itself cause the resulting executable to be
-- covered by the GNU General Public License. This exception does not
-- however invalidate any other reasons why the executable file might be
-- covered by the GNU Public License.

-- ****h* Widgets/SpinBox
-- FUNCTION
-- Provides code for manipulate Tk widget SpinBox
-- SOURCE
package Tcl.Tk.Ada.Widgets.SpinBox is
-- ****

   -- ****t* SpinBox/Tk_SpinBox
   -- FUNCTION
   -- This is a non-abstract type derived directly from Tk_Widget.
   -- Each of the derived widgets redefines the Create subprogram
   -- in order to create the correct type of widget.
   -- SOURCE
   type Tk_SpinBox is new Tk_Widget with private;
   -- ****

   -- ****f* SpinBox/Create (function)
   -- FUNCTION
   -- Creates a new Tk_SpinBox in the specified interpreter.
   -- PARAMETERS
   -- pathName - Tk path (starts with dot) for the widget
   -- options  - Options which will be passed to the widget. Default value is
   --            empty
   -- Interp   - Tcl interpreter to which the widget will be created. If null,
   --            the widget will be created in the "contextual" interpreter.
   --            Default value is null.
   -- RESULT
   -- Newly created Tk_SpinBox
   -- SOURCE
   overriding function Create
     (pathName: in String; options: in String := "";
      Interp: in Tcl_Interp := null) return Tk_SpinBox with
      Pre => pathName /= "";
      -- ****

   -- ****f* SpinBox/Create (procedure)
   -- FUNCTION
   -- Creates a new Tk_SpinBox in the specified interpreter.
   -- PARAMETERS
   -- Widgt    - Tk_SpinBox which will be created
   -- pathName - Tk path (starts with dot) for the widget
   -- options  - Options which will be passed to the widget. Default value is
      --            empty
   -- Interp   - Tcl interpreter to which the widget will be created. If null,
      --            the widget will be created in the "contextual" interpreter.
      --            Default value is null.
      -- SOURCE
   overriding procedure Create
     (Widgt: out Tk_SpinBox; pathName: in String; options: in String := "";
      Interp: in Tcl_Interp := null) with
      Pre => pathName /= "";
      -- ****

      -- ****f* SpinBox/BBox
      -- FUNCTION
      -- Get size of bounding box of the selected character in the selected
      -- Tk_SpinBox
      -- PARAMETERS
      -- SpinBoxWidget - Tk_SpinBox which will be queried
      -- Index         - Index of the character which bounding box will be
      -- taken
      -- RESULT
      -- Four values: x1, y1 - coordinates of starting point of bounding box
      -- from top left, x2, y2 - coordinates of ending point from bottom right
      -- of bounding box.
      -- HISTORY
      -- 8.6.4 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   function BBox
     (SpinBoxWidget: in Tk_SpinBox; Index: in String) return String with
      Pre => Index /= "";
      -- ****

      -- ****f* SpinBox/Delete
      -- FUNCTION
      -- Delete the selected elements of the selected Tk_SpinBox
      -- PARAMETERS
      -- SpinBoxWidget - Tk_SpinBox in which the selected elements will be
      --                 deleted
      -- First         - Index of the first element to delete
      -- Last          - Index of the last element to delete. If empty, delete
      --                 only one element from the SpinBoxWidget. Default
      --                 value is empty
      -- HISTORY
      -- 8.6.4 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   procedure Delete
     (SpinBoxWidget: in Tk_SpinBox; First: in String;
      Last: in String := "") with
      Pre => First /= "";
      -- ****

      -- ****f* SpinBox/Get
      -- FUNCTION
      -- Get the content of the selected Tk_SpinBox
      -- PARAMETERS
      -- SpinBoxWidget - Tk_SpinBox which content will be get
      -- RESULT
      -- String with content of the SpinBoxWidget
      -- HISTORY
      -- 8.6.4 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   function Get(SpinBoxWidget: in Tk_SpinBox) return String;
   -- ****

   -- ****f* SpinBox/ICursor
   -- FUNCTION
   -- Place insertion cursor in the selected Tk_SpinBox just before the
   -- selected character
   -- PARAMETERS
   -- SpinBoxWidget - Tk_SpinBox in which insertion cursor will be placed
   -- Index         - Index of the character before which insertion cursor
   --                 will be placed
   -- HISTORY
   -- 8.6.4 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   procedure ICursor(SpinBoxWidget: in Tk_SpinBox; Index: in String) with
      Pre => Index /= "";
      -- ****

      -- ****f* SpinBox/Identify
      -- FUNCTION
      -- Get the name of the Tk_SpinBox element at the selected coordinates
      -- PARAMETERS
      -- SpinBoxWidget - Tk_SpinBox which will be queried for the name of the
      --                 element
      -- X             - X coordinate of the pixel which will be check
      -- Y             - Y coordinate of the pixel which will be check
      -- RESULT
      -- Name of the element: "buttondown", "buttonup", "entry" or "none" if
      -- pixel is outside SpinBoxWidget
      -- HISTORY
      -- 8.6.4 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   function Identify
     (SpinBoxWidget: in Tk_SpinBox; X, Y: in String) return String with
      Pre => X /= "" and Y /= "";
      -- ****

      -- ****f* SpinBox/SpinBox_Index
      -- FUNCTION
      -- Get numerical index of character from the selected Index
      -- PARAMETERS
      -- SpinBoxWidget - Tk_SpinBox which will be queried for index
      -- Index         - Index of character which numeric index will be taken
      -- RESULT
      -- Numerical index of the selected character
      -- HISTORY
      -- 8.6.4 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   function SpinBox_Index
     (SpinBoxWidget: in Tk_SpinBox; Index: in String) return String with
      Pre => Index /= "";
      -- ****

      -- ****f* SpinBox/Insert
      -- FUNCTION
      -- Insert the selected text into the selected Tk_SpinBox
      -- PARAMETERS
      -- SpinBoxWidget - Tk_SpinBox in which the text will be inserted
      -- Index         - Index of character before which Text will be inserted
      -- Text          - Text to insert
      -- HISTORY
      -- 8.6.4 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   procedure Insert(SpinBoxWidget: in Tk_SpinBox; Index, Text: in String) with
      Pre => Index /= "" and Text /= "";
      -- ****

      -- ****f* SpinBox/Invoke
      -- FUNCTION
      -- Invoke the selected button of the selected Tk_SpinBox
      -- PARAMETERS
      -- SpinBoxWidget - Tk_SpinBox in which the selected button will be
      --                 invoked
      -- Element       - Name of the selected button. Can be "buttondown" or
      --                 "buttonup"
      -- HISTORY
      -- 8.6.4 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   procedure Invoke(SpinBoxWidget: in Tk_SpinBox; Element: in String) with
      Pre => Element in "buttondown" | "buttonup";
      -- ****

      -- ****f* SpinBox/Scan_Mark
      -- FUNCTION
      -- Sets starting position for scan in the selected Tk_SpinBox
      -- PARAMETERS
      -- SpinboxWidget - Tk_SpinBox in which mark will be set
      -- X             - X coordinate of the mark to set
      -- HISTORY
      -- 8.6.5 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   procedure Scan_Mark(SpinboxWidget: in Tk_SpinBox; X: in String) with
      Pre => X /= "";
      -- ****

      -- ****f* SpinBox/Scan_DragTo
      -- FUNCTION
      -- Computes the difference between its X argument and the X argument to
      -- the last Scan_Mark procedure for the Tk_SpinBox. It then adjusts the
      -- view by 10 times the difference in coordinates.
      -- PARAMETERS
      -- SpinboxWidget - Tk_SpinBox in which difference will be computed
      -- X             - X coordinate which difference will be computed
      -- HISTORY
      -- 8.6.5 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   procedure Scan_DragTo(SpinboxWidget: in Tk_SpinBox; X: in String) with
      Pre => X /= "";
      -- ****

      -- ****f* SpinBox/Selection_Adjust
      -- FUNCTION
      -- Add characters to the Tk_SpinBox selection. If nothing is selected,
      -- create a new selection from the beginning to the selected by Index
      -- character
      -- PARAMETERS
      -- SpinBoxWidget - Tk_SpinBox in which selection will be adjusted
      -- Index         - Index of character to set as the last in the
      --                 selection
      -- HISTORY
      -- 8.6.5 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   procedure Selection_Adjust
     (SpinBoxWidget: in Tk_SpinBox; Index: in String) with
      Pre => Index /= "";
      -- ****

      -- ****f* SpinBox/Selection_Clear
      -- FUNCTION
      -- Remove the selection from the selected Tk_SpinBox
      -- PARAMETERS
      -- SpinBoxWidget - Tk_SpinBox in which the selection will be cleared
      -- HISTORY
      -- 8.6.5 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   procedure Selection_Clear(SpinBoxWidget: in Tk_SpinBox);
   -- ****

   -- ****f* SpinBox/Selection_Element (procedure)
   -- FUNCTION
   -- Set the element of Tk_SpinBox as the selected element
   -- PARAMETERS
   -- SpinBoxWidget - Tk_SpinBox in which element will be selected
   -- Element       - Name of the element to select. Possible values are
   --                 "buttonup", "buttondown", "entry" or "none"
   -- HISTORY
   -- 8.6.5 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   procedure Selection_Element
     (SpinBoxWidget: in Tk_SpinBox; Element: in String) with
      Pre => Element in "buttondown" | "buttonup" | "entry" | "none";
      -- ****

      -- ****f* SpinBox/Selection_Element
      -- FUNCTION
      -- Get the currently selected element of the selected Tk_SpinBox
      -- PARAMETERS
      -- SpinBoxWidget - Tk_SpinBox which will be queried for the selected
      --                 element
      -- RESULT
      -- Name of the currently selected element in SpinBoxWidget
      -- HISTORY
      -- 8.6.5 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   function Selection_Element(SpinBoxWidget: in Tk_SpinBox) return String;
   -- ****

   -- ****f* SpinBox/Selection_From
   -- FUNCTION
   -- Set the selection anchor at the selected character in the selected
   -- Tk_SpinBox. Does not change the selection
   -- PARAMETERS
   -- SpinBoxWidget - Tk_SpinBox in which the selection anchor will be set
   -- Index         - Index of the character before which the selection anchor
   --                 will be set
   -- HISTORY
   -- 8.6.5 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   procedure Selection_From
     (SpinBoxWidget: in Tk_SpinBox; Index: in String) with
      Pre => Index /= "";
      -- ****

      -- ****f* SpinBox/Selection_Present
      -- FUNCTION
      -- Check if any character is selected in the selected Tk_SpinBox
      -- PARAMETERS
      -- SpinBoxWidget - Tk_SpinBox which will be queried for the selection
      -- RESULT
      -- "1" if any character in SpinBoxWidget is selected, otherwise "0"
      -- HISTORY
      -- 8.6.5 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   function Selection_Present(SpinBoxWidget: in Tk_SpinBox) return String;
   -- ****

   -- ****f* SpinBox/Selection_Range
   -- FUNCTION
   -- Set the characters selection in the selected Tk_SpinBox
   -- PARAMETERS
   -- SpinBoxWidget - Tk_SpinBox in which the selection will be set
   -- StartIndex    - Start index of character of the selection
   -- EndIndex      - End index of character of the selection
   -- HISTORY
   -- 8.6.5 - Added
   -- TODO
   -- Replace it with higher level of binding
   -- SOURCE
   procedure Selection_Range
     (SpinBoxWidget: in Tk_SpinBox; StartIndex, EndIndex: in String) with
      Pre => StartIndex /= "" and EndIndex /= "";
      -- ****

      -- ****f* SpinBox/Selection_To
      -- FUNCTION
      -- Set selection in the selected Tk_SpinBox
      -- PARAMETERS
      -- SpinBoxWidget - Tk_SpinBox in which the selection will be set
      -- Index         - Index of character from which the selection will be
      --                 set. If is before the selection anchor point, the
      --                 selection will be to the anchor point. If after, the
      --                 selection will be from the anchor point to the Index
      -- HISTORY
      -- 8.6.5 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   procedure Selection_To(SpinBoxWidget: in Tk_SpinBox; Index: in String) with
      Pre => Index /= "";
      -- ****

      -- ****f* SpinBox/Set (procedure)
      -- FUNCTION
      -- Set the selected String as a new value for the selected Tk_SpinBox
      -- PARAMETERS
      -- SpinBoxWidget - Tk_SpinBox which value will be set
      -- Value         - Value to set
      -- HISTORY
      -- 8.6.5 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   procedure Set(SpinBoxWidget: in Tk_SpinBox; Value: in String) with
      Pre => Value /= "";
      -- ****

      -- ****f* SpinBox/Set (function)
      -- FUNCTION
      -- Get the value for the selected Tk_SpinBox
      -- PARAMETERS
      -- SpinBoxWidget - Tk_SpinBox which value will be set
      -- RESULT
      -- The current value of the SpinBoxWidget
      -- HISTORY
      -- 8.6.5 - Added
      -- TODO
      -- Replace it with higher level of binding
      -- SOURCE
   function Set(SpinBoxWidget: in Tk_SpinBox) return String;
   -- ****

private

   type Tk_SpinBox is new Tk_Widget with null record;

end Tcl.Tk.Ada.Widgets.SpinBox;
