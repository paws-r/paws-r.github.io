<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_update_resource_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the sensitivity score for an S3 bucket

### Description

Updates the sensitivity score for an S3 bucket.

### Usage

    macie2_update_resource_profile(resourceArn, sensitivityScoreOverride)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_update_resource_profile_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the S3 bucket that
the request applies to.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_update_resource_profile_:_sensitivityScoreOverride">sensitivityScoreOverride</code></td>
<td><p>The new sensitivity score for the bucket. Valid values are: 100,
assign the maximum score and apply the <em>Sensitive</em> label to the
bucket; and, null (empty), assign a score that Amazon Macie calculates
automatically after you submit the request.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_resource_profile(
      resourceArn = "string",
      sensitivityScoreOverride = 123
    )
