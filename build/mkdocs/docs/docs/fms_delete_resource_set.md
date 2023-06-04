<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_delete_resource_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified ResourceSet

### Description

Deletes the specified ResourceSet.

### Usage

    fms_delete_resource_set(Identifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_delete_resource_set_:_Identifier">Identifier</code></td>
<td><p>[required] A unique identifier for the resource set, used in a
request to refer to the resource set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_set(
      Identifier = "string"
    )
