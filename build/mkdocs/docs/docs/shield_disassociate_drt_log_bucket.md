<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_disassociate_drt_log_bucket</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the Shield Response Team's (SRT) access to the specified Amazon S3 bucket containing the logs that you shared previously

### Description

Removes the Shield Response Team's (SRT) access to the specified Amazon
S3 bucket containing the logs that you shared previously.

### Usage

    shield_disassociate_drt_log_bucket(LogBucket)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_disassociate_drt_log_bucket_:_LogBucket">LogBucket</code></td>
<td><p>[required] The Amazon S3 bucket that contains the logs that you
want to share.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_drt_log_bucket(
      LogBucket = "string"
    )
