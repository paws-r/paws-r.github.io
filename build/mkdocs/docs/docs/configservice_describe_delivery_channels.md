<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_delivery_channels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details about the specified delivery channel

### Description

Returns details about the specified delivery channel. If a delivery
channel is not specified, this action returns the details of all
delivery channels associated with the account.

Currently, you can specify only one delivery channel per region in your
account.

### Usage

    configservice_describe_delivery_channels(DeliveryChannelNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_delivery_channels_:_DeliveryChannelNames">DeliveryChannelNames</code></td>
<td><p>A list of delivery channel names.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeliveryChannels = list(
        list(
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
    )

### Request syntax

    svc$describe_delivery_channels(
      DeliveryChannelNames = list(
        "string"
      )
    )
