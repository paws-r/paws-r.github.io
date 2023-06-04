<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync_get_bulk_publish_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the status of the last BulkPublish operation for an identity pool

### Description

Get the status of the last BulkPublish operation for an identity pool.

This API can only be called with developer credentials. You cannot call
this API with the temporary user credentials provided by Cognito
Identity.

### Usage

    cognitosync_get_bulk_publish_details(IdentityPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitosync_get_bulk_publish_details_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityPoolId = "string",
      BulkPublishStartTime = as.POSIXct(
        "2015-01-01"
      ),
      BulkPublishCompleteTime = as.POSIXct(
        "2015-01-01"
      ),
      BulkPublishStatus = "NOT_STARTED"|"IN_PROGRESS"|"FAILED"|"SUCCEEDED",
      FailureMessage = "string"
    )

### Request syntax

    svc$get_bulk_publish_details(
      IdentityPoolId = "string"
    )
