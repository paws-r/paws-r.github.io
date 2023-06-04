<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_delete_configuration_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing configuration set

### Description

Deletes an existing configuration set.

A configuration set is a set of rules that you apply to voice and SMS
messages that you send. In a configuration set, you can specify a
destination for specific types of events related to voice and SMS
messages.

### Usage

    pinpointsmsvoicev2_delete_configuration_set(ConfigurationSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_delete_configuration_set_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set or the configuration
set ARN that you want to delete. The ConfigurationSetName and
ConfigurationSetArn can be found using the
<code>describe_configuration_sets</code> action.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationSetArn = "string",
      ConfigurationSetName = "string",
      EventDestinations = list(
        list(
          EventDestinationName = "string",
          Enabled = TRUE|FALSE,
          MatchingEventTypes = list(
            "ALL"|"TEXT_ALL"|"TEXT_SENT"|"TEXT_PENDING"|"TEXT_QUEUED"|"TEXT_SUCCESSFUL"|"TEXT_DELIVERED"|"TEXT_INVALID"|"TEXT_INVALID_MESSAGE"|"TEXT_UNREACHABLE"|"TEXT_CARRIER_UNREACHABLE"|"TEXT_BLOCKED"|"TEXT_CARRIER_BLOCKED"|"TEXT_SPAM"|"TEXT_UNKNOWN"|"TEXT_TTL_EXPIRED"|"VOICE_ALL"|"VOICE_INITIATED"|"VOICE_RINGING"|"VOICE_ANSWERED"|"VOICE_COMPLETED"|"VOICE_BUSY"|"VOICE_NO_ANSWER"|"VOICE_FAILED"|"VOICE_TTL_EXPIRED"
          ),
          CloudWatchLogsDestination = list(
            IamRoleArn = "string",
            LogGroupArn = "string"
          ),
          KinesisFirehoseDestination = list(
            IamRoleArn = "string",
            DeliveryStreamArn = "string"
          ),
          SnsDestination = list(
            TopicArn = "string"
          )
        )
      ),
      DefaultMessageType = "TRANSACTIONAL"|"PROMOTIONAL",
      DefaultSenderId = "string",
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$delete_configuration_set(
      ConfigurationSetName = "string"
    )
