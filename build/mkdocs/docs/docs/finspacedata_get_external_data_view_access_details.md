<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_get_external_data_view_access_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the credentials to access the external Dataview from an S3 location

### Description

Returns the credentials to access the external Dataview from an S3
location. To call this API:

-   You must retrieve the programmatic credentials.

-   You must be a member of a FinSpace user group, where the dataset
    that you want to access has `⁠Read Dataset Data⁠` permissions.

### Usage

    finspacedata_get_external_data_view_access_details(dataViewId,
      datasetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_get_external_data_view_access_details_:_dataViewId">dataViewId</code></td>
<td><p>[required] The unique identifier for the Dataview that you want
to access.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_get_external_data_view_access_details_:_datasetId">datasetId</code></td>
<td><p>[required] The unique identifier for the Dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      credentials = list(
        accessKeyId = "string",
        secretAccessKey = "string",
        sessionToken = "string",
        expiration = 123
      ),
      s3Location = list(
        bucket = "string",
        key = "string"
      )
    )

### Request syntax

    svc$get_external_data_view_access_details(
      dataViewId = "string",
      datasetId = "string"
    )
