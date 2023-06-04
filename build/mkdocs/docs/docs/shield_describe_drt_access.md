<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_describe_drt_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the current role and list of Amazon S3 log buckets used by the Shield Response Team (SRT) to access your Amazon Web Services account while assisting with attack mitigation

### Description

Returns the current role and list of Amazon S3 log buckets used by the
Shield Response Team (SRT) to access your Amazon Web Services account
while assisting with attack mitigation.

### Usage

    shield_describe_drt_access()

### Value

A list with the following syntax:

    list(
      RoleArn = "string",
      LogBucketList = list(
        "string"
      )
    )

### Request syntax

    svc$describe_drt_access()
