<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_delete_parameters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a list of parameters

### Description

Delete a list of parameters. After deleting a parameter, wait for at
least 30 seconds to create a parameter with the same name.

### Usage

    ssm_delete_parameters(Names)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_delete_parameters_:_Names">Names</code></td>
<td><p>[required] The names of the parameters to delete. After deleting
a parameter, wait for at least 30 seconds to create a parameter with the
same name.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeletedParameters = list(
        "string"
      ),
      InvalidParameters = list(
        "string"
      )
    )

### Request syntax

    svc$delete_parameters(
      Names = list(
        "string"
      )
    )
