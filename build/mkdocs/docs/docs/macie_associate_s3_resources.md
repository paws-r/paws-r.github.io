<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie_associate_s3_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## (Discontinued) Associates specified S3 resources with Amazon Macie Classic for monitoring and data classification

### Description

(Discontinued) Associates specified S3 resources with Amazon Macie
Classic for monitoring and data classification. If `memberAccountId`
isn't specified, the action associates specified S3 resources with Macie
Classic for the current Macie Classic administrator account. If
`memberAccountId` is specified, the action associates specified S3
resources with Macie Classic for the specified member account.

### Usage

    macie_associate_s3_resources(memberAccountId, s3Resources)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie_associate_s3_resources_:_memberAccountId">memberAccountId</code></td>
<td><p>(Discontinued) The ID of the Amazon Macie Classic member account
whose resources you want to associate with Macie Classic.</p></td>
</tr>
<tr class="even">
<td><code
id="macie_associate_s3_resources_:_s3Resources">s3Resources</code></td>
<td><p>[required] (Discontinued) The S3 resources that you want to
associate with Amazon Macie Classic for monitoring and data
classification.</p></td>
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

    svc$associate_s3_resources(
      memberAccountId = "string",
      s3Resources = list(
        list(
          bucketName = "string",
          prefix = "string",
          classificationType = list(
            oneTime = "FULL"|"NONE",
            continuous = "FULL"
          )
        )
      )
    )
