<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_put_delivery_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic

### Description

Creates a delivery channel object to deliver configuration information
to an Amazon S3 bucket and Amazon SNS topic.

Before you can create a delivery channel, you must create a
configuration recorder.

You can use this action to change the Amazon S3 bucket or an Amazon SNS
topic of the existing delivery channel. To change the Amazon S3 bucket
or an Amazon SNS topic, call this action and specify the changed values
for the S3 bucket and the SNS topic. If you specify a different value
for either the S3 bucket or the SNS topic, this action will keep the
existing value for the parameter that is not changed.

You can have only one delivery channel per region in your account.

### Usage

    configservice_put_delivery_channel(DeliveryChannel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_put_delivery_channel_:_DeliveryChannel">DeliveryChannel</code></td>
<td><p>[required] The configuration delivery channel object that
delivers the configuration information to an Amazon S3 bucket and to an
Amazon SNS topic.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_delivery_channel(
      DeliveryChannel = list(
        name = "string",
        s3BucketName = "string",
        s3KeyPrefix = "string",
        s3KmsKeyArn = "string",
        snsTopicARN = "string",
        configSnapshotDeliveryProperties = list(
          deliveryFrequency = "One_Hour"|"Three_Hours"|"Six_Hours"|"Twelve_Hours"|"TwentyFour_Hours"
        )
      )
    )
