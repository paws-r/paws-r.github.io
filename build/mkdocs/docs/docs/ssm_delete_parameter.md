<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_delete_parameter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a parameter from the system

### Description

Delete a parameter from the system. After deleting a parameter, wait for
at least 30 seconds to create a parameter with the same name.

### Usage

    ssm_delete_parameter(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_delete_parameter_:_Name">Name</code></td>
<td><p>[required] The name of the parameter to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_parameter(
      Name = "string"
    )
