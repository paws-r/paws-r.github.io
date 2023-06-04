<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_update_data_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the DataSourceName of a DataSource

### Description

Updates the `DataSourceName` of a `DataSource`.

You can use the `get_data_source` operation to view the contents of the
updated data element.

### Usage

    machinelearning_update_data_source(DataSourceId, DataSourceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_update_data_source_:_DataSourceId">DataSourceId</code></td>
<td><p>[required] The ID assigned to the <code>DataSource</code> during
creation.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_update_data_source_:_DataSourceName">DataSourceName</code></td>
<td><p>[required] A new user-supplied name or description of the
<code>DataSource</code> that will replace the current
description.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataSourceId = "string"
    )

### Request syntax

    svc$update_data_source(
      DataSourceId = "string",
      DataSourceName = "string"
    )
