<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_put_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a destination

### Description

Creates or updates a destination. This operation is used only to create
destinations for cross-account subscriptions.

A destination encapsulates a physical resource (such as an Amazon
Kinesis stream). With a destination, you can subscribe to a real-time
stream of log events for a different account, ingested using
`put_log_events`.

Through an access policy, a destination controls what is written to it.
By default, `put_destination` does not set any access policy with the
destination, which means a cross-account user cannot call
`put_subscription_filter` against this destination. To enable this, the
destination owner must call `put_destination_policy` after
`put_destination`.

To perform a `put_destination` operation, you must also have the
`iam:PassRole` permission.

### Usage

    cloudwatchlogs_put_destination(destinationName, targetArn, roleArn,
      tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_put_destination_:_destinationName">destinationName</code></td>
<td><p>[required] A name for the destination.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_put_destination_:_targetArn">targetArn</code></td>
<td><p>[required] The ARN of an Amazon Kinesis stream to which to
deliver matching log events.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_put_destination_:_roleArn">roleArn</code></td>
<td><p>[required] The ARN of an IAM role that grants CloudWatch Logs
permissions to call the Amazon Kinesis <code>PutRecord</code> operation
on the destination stream.</p></td>
</tr>
<tr class="even">
<td><code id="cloudwatchlogs_put_destination_:_tags">tags</code></td>
<td><p>An optional list of key-value pairs to associate with the
resource.</p>
<p>For more information about tagging, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      destination = list(
        destinationName = "string",
        targetArn = "string",
        roleArn = "string",
        accessPolicy = "string",
        arn = "string",
        creationTime = 123
      )
    )

### Request syntax

    svc$put_destination(
      destinationName = "string",
      targetArn = "string",
      roleArn = "string",
      tags = list(
        "string"
      )
    )
