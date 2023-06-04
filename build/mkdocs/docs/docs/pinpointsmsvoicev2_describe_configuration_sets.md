<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_describe_configuration_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified configuration sets or all in your account

### Description

Describes the specified configuration sets or all in your account.

If you specify configuration set names, the output includes information
for only the specified configuration sets. If you specify filters, the
output includes information for only those configuration sets that meet
the filter criteria. If you don't specify configuration set names or
filters, the output includes information for all configuration sets.

If you specify a configuration set name that isn't valid, an error is
returned.

### Usage

    pinpointsmsvoicev2_describe_configuration_sets(ConfigurationSetNames,
      Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_configuration_sets_:_ConfigurationSetNames">ConfigurationSetNames</code></td>
<td><p>An array of strings. Each element can be either a
ConfigurationSetName or ConfigurationSetArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_configuration_sets_:_Filters">Filters</code></td>
<td><p>An array of filters to apply to the results that are
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_configuration_sets_:_NextToken">NextToken</code></td>
<td><p>The token to be used for the next set of paginated results. You
don't need to supply a value for this field in the initial
request.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_configuration_sets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per each
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationSets = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_configuration_sets(
      ConfigurationSetNames = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "event-destination-name"|"matching-event-types"|"default-message-type"|"default-sender-id",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
