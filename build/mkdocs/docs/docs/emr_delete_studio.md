<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_delete_studio</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes an Amazon EMR Studio from the Studio metadata store

### Description

Removes an Amazon EMR Studio from the Studio metadata store.

### Usage

    emr_delete_studio(StudioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_delete_studio_:_StudioId">StudioId</code></td>
<td><p>[required] The ID of the Amazon EMR Studio.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_studio(
      StudioId = "string"
    )
