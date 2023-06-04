<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_get_changeset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get information about a Changeset

### Description

Get information about a Changeset.

### Usage

    finspacedata_get_changeset(datasetId, changesetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_get_changeset_:_datasetId">datasetId</code></td>
<td><p>[required] The unique identifier for the FinSpace Dataset where
the Changeset is created.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_get_changeset_:_changesetId">changesetId</code></td>
<td><p>[required] The unique identifier of the Changeset for which to
get data.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      changesetId = "string",
      changesetArn = "string",
      datasetId = "string",
      changeType = "REPLACE"|"APPEND"|"MODIFY",
      sourceParams = list(
        "string"
      ),
      formatParams = list(
        "string"
      ),
      createTime = 123,
      status = "PENDING"|"FAILED"|"SUCCESS"|"RUNNING"|"STOP_REQUESTED",
      errorInfo = list(
        errorMessage = "string",
        errorCategory = "VALIDATION"|"SERVICE_QUOTA_EXCEEDED"|"ACCESS_DENIED"|"RESOURCE_NOT_FOUND"|"THROTTLING"|"INTERNAL_SERVICE_EXCEPTION"|"CANCELLED"|"USER_RECOVERABLE"
      ),
      activeUntilTimestamp = 123,
      activeFromTimestamp = 123,
      updatesChangesetId = "string",
      updatedByChangesetId = "string"
    )

### Request syntax

    svc$get_changeset(
      datasetId = "string",
      changesetId = "string"
    )
