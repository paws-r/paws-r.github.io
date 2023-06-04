<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_delete_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an application

### Description

Deletes an application.

### Usage

    appstream_delete_application(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_delete_application_:_Name">Name</code></td>
<td><p>[required] The name of the application.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_application(
      Name = "string"
    )
