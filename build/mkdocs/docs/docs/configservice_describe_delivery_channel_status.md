<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_delivery_channel_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the current status of the specified delivery channel

### Description

Returns the current status of the specified delivery channel. If a
delivery channel is not specified, this action returns the current
status of all delivery channels associated with the account.

Currently, you can specify only one delivery channel per region in your
account.

### Usage

    configservice_describe_delivery_channel_status(DeliveryChannelNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_delivery_channel_status_:_DeliveryChannelNames">DeliveryChannelNames</code></td>
<td><p>A list of delivery channel names.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeliveryChannelsStatus = list(
        list(
          name = "string",
          configSnapshotDeliveryInfo = list(
            lastStatus = "Success"|"Failure"|"Not_Applicable",
            lastErrorCode = "string",
            lastErrorMessage = "string",
            lastAttemptTime = as.POSIXct(
              "2015-01-01"
            ),
            lastSuccessfulTime = as.POSIXct(
              "2015-01-01"
            ),
            nextDeliveryTime = as.POSIXct(
              "2015-01-01"
            )
          ),
          configHistoryDeliveryInfo = list(
            lastStatus = "Success"|"Failure"|"Not_Applicable",
            lastErrorCode = "string",
            lastErrorMessage = "string",
            lastAttemptTime = as.POSIXct(
              "2015-01-01"
            ),
            lastSuccessfulTime = as.POSIXct(
              "2015-01-01"
            ),
            nextDeliveryTime = as.POSIXct(
              "2015-01-01"
            )
          ),
          configStreamDeliveryInfo = list(
            lastStatus = "Success"|"Failure"|"Not_Applicable",
            lastErrorCode = "string",
            lastErrorMessage = "string",
            lastStatusChangeTime = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_delivery_channel_status(
      DeliveryChannelNames = list(
        "string"
      )
    )
