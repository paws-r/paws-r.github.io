<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_update_resource_profile_detections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the sensitivity scoring settings for an S3 bucket

### Description

Updates the sensitivity scoring settings for an S3 bucket.

### Usage

    macie2_update_resource_profile_detections(resourceArn,
      suppressDataIdentifiers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_update_resource_profile_detections_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the S3 bucket that
the request applies to.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_update_resource_profile_detections_:_suppressDataIdentifiers">suppressDataIdentifiers</code></td>
<td><p>An array of objects, one for each custom data identifier or
managed data identifier that detected the type of sensitive data to
start excluding or including in the bucket's score. To start including
all sensitive data types in the score, don't specify any values for this
array.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_resource_profile_detections(
      resourceArn = "string",
      suppressDataIdentifiers = list(
        list(
          id = "string",
          type = "CUSTOM"|"MANAGED"
        )
      )
    )
