<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_stop_trigger</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a specified trigger

### Description

Stops a specified trigger.

### Usage

    glue_stop_trigger(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_stop_trigger_:_Name">Name</code></td>
<td><p>[required] The name of the trigger to stop.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$stop_trigger(
      Name = "string"
    )
