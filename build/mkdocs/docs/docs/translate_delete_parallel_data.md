<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_delete_parallel_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a parallel data resource in Amazon Translate

### Description

Deletes a parallel data resource in Amazon Translate.

### Usage

    translate_delete_parallel_data(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="translate_delete_parallel_data_:_Name">Name</code></td>
<td><p>[required] The name of the parallel data resource that is being
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Status = "CREATING"|"UPDATING"|"ACTIVE"|"DELETING"|"FAILED"
    )

### Request syntax

    svc$delete_parallel_data(
      Name = "string"
    )
