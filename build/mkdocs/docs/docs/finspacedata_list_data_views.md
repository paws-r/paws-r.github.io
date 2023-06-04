<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_list_data_views</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all available Dataviews for a Dataset

### Description

Lists all available Dataviews for a Dataset.

### Usage

    finspacedata_list_data_views(datasetId, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_list_data_views_:_datasetId">datasetId</code></td>
<td><p>[required] The unique identifier of the Dataset for which to
retrieve Dataviews.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_list_data_views_:_nextToken">nextToken</code></td>
<td><p>A token that indicates where a results page should
begin.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_list_data_views_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      dataViews = list(
        list(
          dataViewId = "string",
          dataViewArn = "string",
          datasetId = "string",
          asOfTimestamp = 123,
          partitionColumns = list(
            "string"
          ),
          sortColumns = list(
            "string"
          ),
          status = "RUNNING"|"STARTING"|"FAILED"|"CANCELLED"|"TIMEOUT"|"SUCCESS"|"PENDING"|"FAILED_CLEANUP_FAILED",
          errorInfo = list(
            errorMessage = "string",
            errorCategory = "VALIDATION"|"SERVICE_QUOTA_EXCEEDED"|"ACCESS_DENIED"|"RESOURCE_NOT_FOUND"|"THROTTLING"|"INTERNAL_SERVICE_EXCEPTION"|"CANCELLED"|"USER_RECOVERABLE"
          ),
          destinationTypeProperties = list(
            destinationType = "string",
            s3DestinationExportFileFormat = "PARQUET"|"DELIMITED_TEXT",
            s3DestinationExportFileFormatOptions = list(
              "string"
            )
          ),
          autoUpdate = TRUE|FALSE,
          createTime = 123,
          lastModifiedTime = 123
        )
      )
    )

### Request syntax

    svc$list_data_views(
      datasetId = "string",
      nextToken = "string",
      maxResults = 123
    )
