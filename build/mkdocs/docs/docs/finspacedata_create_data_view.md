<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_create_data_view</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Dataview for a Dataset

### Description

Creates a Dataview for a Dataset.

### Usage

    finspacedata_create_data_view(clientToken, datasetId, autoUpdate,
      sortColumns, partitionColumns, asOfTimestamp, destinationTypeParams)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_create_data_view_:_clientToken">clientToken</code></td>
<td><p>A token that ensures idempotency. This token expires in 10
minutes.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_create_data_view_:_datasetId">datasetId</code></td>
<td><p>[required] The unique Dataset identifier that is used to create a
Dataview.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_create_data_view_:_autoUpdate">autoUpdate</code></td>
<td><p>Flag to indicate Dataview should be updated
automatically.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_create_data_view_:_sortColumns">sortColumns</code></td>
<td><p>Columns to be used for sorting the data.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_create_data_view_:_partitionColumns">partitionColumns</code></td>
<td><p>Ordered set of column names used to partition data.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_create_data_view_:_asOfTimestamp">asOfTimestamp</code></td>
<td><p>Beginning time to use for the Dataview. The value is determined
as epoch time in milliseconds. For example, the value for Monday,
November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_create_data_view_:_destinationTypeParams">destinationTypeParams</code></td>
<td><p>[required] Options that define the destination type for the
Dataview.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      datasetId = "string",
      dataViewId = "string"
    )

### Request syntax

    svc$create_data_view(
      clientToken = "string",
      datasetId = "string",
      autoUpdate = TRUE|FALSE,
      sortColumns = list(
        "string"
      ),
      partitionColumns = list(
        "string"
      ),
      asOfTimestamp = 123,
      destinationTypeParams = list(
        destinationType = "string",
        s3DestinationExportFileFormat = "PARQUET"|"DELIMITED_TEXT",
        s3DestinationExportFileFormatOptions = list(
          "string"
        )
      )
    )
