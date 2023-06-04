<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_stop_data_source_sync_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a synchronization job that is currently running

### Description

Stops a synchronization job that is currently running. You can't stop a
scheduled synchronization job.

### Usage

    kendra_stop_data_source_sync_job(Id, IndexId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_stop_data_source_sync_job_:_Id">Id</code></td>
<td><p>[required] The identifier of the data source connector for which
to stop the synchronization jobs.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_stop_data_source_sync_job_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index used with the data source
connector.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_data_source_sync_job(
      Id = "string",
      IndexId = "string"
    )
