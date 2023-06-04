<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_trigger</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified trigger

### Description

Deletes a specified trigger. If the trigger is not found, no exception
is thrown.

### Usage

    glue_delete_trigger(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_delete_trigger_:_Name">Name</code></td>
<td><p>[required] The name of the trigger to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$delete_trigger(
      Name = "string"
    )
