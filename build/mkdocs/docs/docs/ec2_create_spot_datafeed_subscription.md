<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_spot_datafeed_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a data feed for Spot Instances, enabling you to view Spot Instance usage logs

### Description

Creates a data feed for Spot Instances, enabling you to view Spot
Instance usage logs. You can create one data feed per Amazon Web
Services account. For more information, see [Spot Instance data
feed](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html)
in the *Amazon EC2 User Guide for Linux Instances*.

### Usage

    ec2_create_spot_datafeed_subscription(Bucket, DryRun, Prefix)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_spot_datafeed_subscription_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the Amazon S3 bucket in which to store the
Spot Instance data feed. For more information about bucket names, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/BucketRestrictions.html#bucketnamingrules">Rules
for bucket naming</a> in the <em>Amazon S3 Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_spot_datafeed_subscription_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_spot_datafeed_subscription_:_Prefix">Prefix</code></td>
<td><p>The prefix for the data feed file names.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SpotDatafeedSubscription = list(
        Bucket = "string",
        Fault = list(
          Code = "string",
          Message = "string"
        ),
        OwnerId = "string",
        Prefix = "string",
        State = "Active"|"Inactive"
      )
    )

### Request syntax

    svc$create_spot_datafeed_subscription(
      Bucket = "string",
      DryRun = TRUE|FALSE,
      Prefix = "string"
    )

### Examples

    ## Not run: 
    # This example creates a Spot Instance data feed for your AWS account.
    svc$create_spot_datafeed_subscription(
      Bucket = "my-s3-bucket",
      Prefix = "spotdata"
    )

    ## End(Not run)
