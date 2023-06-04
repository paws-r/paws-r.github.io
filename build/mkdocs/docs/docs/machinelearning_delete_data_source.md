<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_delete_data_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns the DELETED status to a DataSource, rendering it unusable

### Description

Assigns the DELETED status to a `DataSource`, rendering it unusable.

After using the `delete_data_source` operation, you can use the
`get_data_source` operation to verify that the status of the
`DataSource` changed to DELETED.

**Caution:** The results of the `delete_data_source` operation are
irreversible.

### Usage

    machinelearning_delete_data_source(DataSourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_delete_data_source_:_DataSourceId">DataSourceId</code></td>
<td><p>[required] A user-supplied ID that uniquely identifies the
<code>DataSource</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataSourceId = "string"
    )

### Request syntax

    svc$delete_data_source(
      DataSourceId = "string"
    )
