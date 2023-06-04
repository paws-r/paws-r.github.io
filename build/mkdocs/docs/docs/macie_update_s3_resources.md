<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie_update_s3_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## (Discontinued) Updates the classification types for the specified S3 resources

### Description

(Discontinued) Updates the classification types for the specified S3
resources. If `memberAccountId` isn't specified, the action updates the
classification types of the S3 resources associated with Amazon Macie
Classic for the current Macie Classic administrator account. If
`memberAccountId` is specified, the action updates the classification
types of the S3 resources associated with Macie Classic for the
specified member account.

### Usage

    macie_update_s3_resources(memberAccountId, s3ResourcesUpdate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie_update_s3_resources_:_memberAccountId">memberAccountId</code></td>
<td><p>(Discontinued) The Amazon Web Services account ID of the Amazon
Macie Classic member account whose S3 resources' classification types
you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="macie_update_s3_resources_:_s3ResourcesUpdate">s3ResourcesUpdate</code></td>
<td><p>[required] (Discontinued) The S3 resources whose classification
types you want to update.</p></td>
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

    svc$update_s3_resources(
      memberAccountId = "string",
      s3ResourcesUpdate = list(
        list(
          bucketName = "string",
          prefix = "string",
          classificationTypeUpdate = list(
            oneTime = "FULL"|"NONE",
            continuous = "FULL"
          )
        )
      )
    )
