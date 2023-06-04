<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_delete_framework</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the framework specified by a framework name

### Description

Deletes the framework specified by a framework name.

### Usage

    backup_delete_framework(FrameworkName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_delete_framework_:_FrameworkName">FrameworkName</code></td>
<td><p>[required] The unique name of a framework.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_framework(
      FrameworkName = "string"
    )
