<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_resource_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves (queries) sensitive data discovery statistics and the sensitivity score for an S3 bucket

### Description

Retrieves (queries) sensitive data discovery statistics and the
sensitivity score for an S3 bucket.

### Usage

    macie2_get_resource_profile(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_get_resource_profile_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the S3 bucket that
the request applies to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      profileUpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      sensitivityScore = 123,
      sensitivityScoreOverridden = TRUE|FALSE,
      statistics = list(
        totalBytesClassified = 123,
        totalDetections = 123,
        totalDetectionsSuppressed = 123,
        totalItemsClassified = 123,
        totalItemsSensitive = 123,
        totalItemsSkipped = 123,
        totalItemsSkippedInvalidEncryption = 123,
        totalItemsSkippedInvalidKms = 123,
        totalItemsSkippedPermissionDenied = 123
      )
    )

### Request syntax

    svc$get_resource_profile(
      resourceArn = "string"
    )
