<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie_disassociate_s3_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## (Discontinued) Removes specified S3 resources from being monitored by Amazon Macie Classic

### Description

(Discontinued) Removes specified S3 resources from being monitored by
Amazon Macie Classic. If `memberAccountId` isn't specified, the action
removes specified S3 resources from Macie Classic for the current Macie
Classic administrator account. If `memberAccountId` is specified, the
action removes specified S3 resources from Macie Classic for the
specified member account.

### Usage

    macie_disassociate_s3_resources(memberAccountId, associatedS3Resources)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie_disassociate_s3_resources_:_memberAccountId">memberAccountId</code></td>
<td><p>(Discontinued) The ID of the Amazon Macie Classic member account
whose resources you want to remove from being monitored by Macie
Classic.</p></td>
</tr>
<tr class="even">
<td><code
id="macie_disassociate_s3_resources_:_associatedS3Resources">associatedS3Resources</code></td>
<td><p>[required] (Discontinued) The S3 resources (buckets or prefixes)
that you want to remove from being monitored and classified by Amazon
Macie Classic.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      failedS3Resources = list(
        list(
          failedItem = list(
            bucketName = "string",
            prefix = "string"
          ),
          errorCode = "string",
          errorMessage = "string"
        )
      )
    )

### Request syntax

    svc$disassociate_s3_resources(
      memberAccountId = "string",
      associatedS3Resources = list(
        list(
          bucketName = "string",
          prefix = "string"
        )
      )
    )
