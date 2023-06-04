<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_update_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a list

### Description

Updates a list.

### Usage

    frauddetector_update_list(name, elements, description, updateMode,
      variableType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_update_list_:_name">name</code></td>
<td><p>[required] The name of the list to update.</p></td>
</tr>
<tr class="even">
<td><code id="frauddetector_update_list_:_elements">elements</code></td>
<td><p>One or more list elements to add or replace. If you are providing
the elements, make sure to specify the <code>updateMode</code> to
use.</p>
<p>If you are deleting all elements from the list, use
<code>REPLACE</code> for the <code>updateMode</code> and provide an
empty list (0 elements).</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_update_list_:_description">description</code></td>
<td><p>The new description.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_list_:_updateMode">updateMode</code></td>
<td><p>The update mode (type).</p>
<ul>
<li><p>Use <code>APPEND</code> if you are adding elements to the
list.</p></li>
<li><p>Use <code>REPLACE</code> if you replacing existing elements in
the list.</p></li>
<li><p>Use <code>REMOVE</code> if you are removing elements from the
list.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_update_list_:_variableType">variableType</code></td>
<td><p>The variable type you want to assign to the list.</p>
<p>You cannot update a variable type of a list that already has a
variable type assigned to it. You can assign a variable type to a list
only if the list does not already have a variable type.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_list(
      name = "string",
      elements = list(
        "string"
      ),
      description = "string",
      updateMode = "REPLACE"|"APPEND"|"REMOVE",
      variableType = "string"
    )
