<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync_bulk_publish</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream

### Description

Initiates a bulk publish of all existing datasets for an Identity Pool
to the configured stream. Customers are limited to one successful bulk
publish per 24 hours. Bulk publish is an asynchronous request, customers
can see the status of the request via the GetBulkPublishDetails
operation.

This API can only be called with developer credentials. You cannot call
this API with the temporary user credentials provided by Cognito
Identity.

### Usage

    cognitosync_bulk_publish(IdentityPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitosync_bulk_publish_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityPoolId = "string"
    )

### Request syntax

    svc$bulk_publish(
      IdentityPoolId = "string"
    )
