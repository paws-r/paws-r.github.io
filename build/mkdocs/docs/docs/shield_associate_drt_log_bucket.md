<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_associate_drt_log_bucket</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Authorizes the Shield Response Team (SRT) to access the specified Amazon S3 bucket containing log data such as Application Load Balancer access logs, CloudFront logs, or logs from third party sources

### Description

Authorizes the Shield Response Team (SRT) to access the specified Amazon
S3 bucket containing log data such as Application Load Balancer access
logs, CloudFront logs, or logs from third party sources. You can
associate up to 10 Amazon S3 buckets with your subscription.

To use the services of the SRT and make an `associate_drt_log_bucket`
request, you must be subscribed to the [Business Support
plan](https://aws.amazon.com/premiumsupport/plans/business/) or the
[Enterprise Support
plan](https://aws.amazon.com/premiumsupport/plans/enterprise/).

### Usage

    shield_associate_drt_log_bucket(LogBucket)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_associate_drt_log_bucket_:_LogBucket">LogBucket</code></td>
<td><p>[required] The Amazon S3 bucket that contains the logs that you
want to share.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_drt_log_bucket(
      LogBucket = "string"
    )
