<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_start_data_source_sync_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a synchronization job for a data source connector

### Description

Starts a synchronization job for a data source connector. If a
synchronization job is already in progress, Amazon Kendra returns a
`ResourceInUseException` exception.

### Usage

    kendra_start_data_source_sync_job(Id, IndexId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_start_data_source_sync_job_:_Id">Id</code></td>
<td><p>[required] The identifier of the data source connector to
synchronize.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_start_data_source_sync_job_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index used with the data source
connector.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExecutionId = "string"
    )

### Request syntax

    svc$start_data_source_sync_job(
      Id = "string",
      IndexId = "string"
    )
