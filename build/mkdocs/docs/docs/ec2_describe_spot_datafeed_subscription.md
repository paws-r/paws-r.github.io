<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_spot_datafeed_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the data feed for Spot Instances

### Description

Describes the data feed for Spot Instances. For more information, see
[Spot Instance data
feed](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html)
in the *Amazon EC2 User Guide for Linux Instances*.

### Usage

    ec2_describe_spot_datafeed_subscription(DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_spot_datafeed_subscription_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
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

    svc$describe_spot_datafeed_subscription(
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example describes the Spot Instance datafeed subscription for your
    # AWS account.
    svc$describe_spot_datafeed_subscription()

    ## End(Not run)
