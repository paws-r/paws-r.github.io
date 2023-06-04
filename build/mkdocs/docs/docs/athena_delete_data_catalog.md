<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_delete_data_catalog</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a data catalog

### Description

Deletes a data catalog.

### Usage

    athena_delete_data_catalog(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="athena_delete_data_catalog_:_Name">Name</code></td>
<td><p>[required] The name of the data catalog to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_data_catalog(
      Name = "string"
    )
