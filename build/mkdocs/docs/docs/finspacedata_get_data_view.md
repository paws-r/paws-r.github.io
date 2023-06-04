<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_get_data_view</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a Dataview

### Description

Gets information about a Dataview.

### Usage

    finspacedata_get_data_view(dataViewId, datasetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_get_data_view_:_dataViewId">dataViewId</code></td>
<td><p>[required] The unique identifier for the Dataview.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_get_data_view_:_datasetId">datasetId</code></td>
<td><p>[required] The unique identifier for the Dataset used in the
Dataview.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      autoUpdate = TRUE|FALSE,
      partitionColumns = list(
        "string"
      ),
      datasetId = "string",
      asOfTimestamp = 123,
      errorInfo = list(
        errorMessage = "string",
        errorCategory = "VALIDATION"|"SERVICE_QUOTA_EXCEEDED"|"ACCESS_DENIED"|"RESOURCE_NOT_FOUND"|"THROTTLING"|"INTERNAL_SERVICE_EXCEPTION"|"CANCELLED"|"USER_RECOVERABLE"
      ),
      lastModifiedTime = 123,
      createTime = 123,
      sortColumns = list(
        "string"
      ),
      dataViewId = "string",
      dataViewArn = "string",
      destinationTypeParams = list(
        destinationType = "string",
        s3DestinationExportFileFormat = "PARQUET"|"DELIMITED_TEXT",
        s3DestinationExportFileFormatOptions = list(
          "string"
        )
      ),
      status = "RUNNING"|"STARTING"|"FAILED"|"CANCELLED"|"TIMEOUT"|"SUCCESS"|"PENDING"|"FAILED_CLEANUP_FAILED"
    )

### Request syntax

    svc$get_data_view(
      dataViewId = "string",
      datasetId = "string"
    )
