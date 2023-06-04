<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_delete_data_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon Kendra data source connector

### Description

Deletes an Amazon Kendra data source connector. An exception is not
thrown if the data source is already being deleted. While the data
source is being deleted, the `Status` field returned by a call to the
`describe_data_source` API is set to `DELETING`. For more information,
see [Deleting Data
Sources](https://docs.aws.amazon.com/kendra/latest/dg/delete-data-source.html).

### Usage

    kendra_delete_data_source(Id, IndexId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_delete_data_source_:_Id">Id</code></td>
<td><p>[required] The identifier of the data source connector you want
to delete.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_delete_data_source_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index used with the data source
connector.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_data_source(
      Id = "string",
      IndexId = "string"
    )
