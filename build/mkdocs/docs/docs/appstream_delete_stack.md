<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_delete_stack</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified stack

### Description

Deletes the specified stack. After the stack is deleted, the application
streaming environment provided by the stack is no longer available to
users. Also, any reservations made for application streaming sessions
for the stack are released.

### Usage

    appstream_delete_stack(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_delete_stack_:_Name">Name</code></td>
<td><p>[required] The name of the stack.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_stack(
      Name = "string"
    )
