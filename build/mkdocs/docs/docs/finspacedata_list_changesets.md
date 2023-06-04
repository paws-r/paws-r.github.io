<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_list_changesets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the FinSpace Changesets for a Dataset

### Description

Lists the FinSpace Changesets for a Dataset.

### Usage

    finspacedata_list_changesets(datasetId, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_list_changesets_:_datasetId">datasetId</code></td>
<td><p>[required] The unique identifier for the FinSpace Dataset to
which the Changeset belongs.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_list_changesets_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_list_changesets_:_nextToken">nextToken</code></td>
<td><p>A token that indicates where a results page should
begin.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      changesets = list(
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_changesets(
      datasetId = "string",
      maxResults = 123,
      nextToken = "string"
    )
