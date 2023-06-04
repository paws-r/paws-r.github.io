<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_describe_configuration_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details of the specified configuration set

### Description

Returns the details of the specified configuration set. For information
about using configuration sets, see the [Amazon SES Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html).

You can execute this operation no more than once per second.

### Usage

    ses_describe_configuration_set(ConfigurationSetName,
      ConfigurationSetAttributeNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_describe_configuration_set_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set to
describe.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_describe_configuration_set_:_ConfigurationSetAttributeNames">ConfigurationSetAttributeNames</code></td>
<td><p>A list of configuration set attributes to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationSet = list(
        Name = "string"
      ),
      EventDestinations = list(
        list(
          Name = "string",
          Enabled = TRUE|FALSE,
          MatchingEventTypes = list(
            "send"|"reject"|"bounce"|"complaint"|"delivery"|"open"|"click"|"renderingFailure"
          ),
          KinesisFirehoseDestination = list(
            IAMRoleARN = "string",
            DeliveryStreamARN = "string"
          ),
          CloudWatchDestination = list(
            DimensionConfigurations = list(
              list(
                DimensionName = "string",
                DimensionValueSource = "messageTag"|"emailHeader"|"linkTag",
                DefaultDimensionValue = "string"
              )
            )
          ),
          SNSDestination = list(
            TopicARN = "string"
          )
        )
      ),
      TrackingOptions = list(
        CustomRedirectDomain = "string"
      ),
      DeliveryOptions = list(
        TlsPolicy = "Require"|"Optional"
      ),
      ReputationOptions = list(
        SendingEnabled = TRUE|FALSE,
        ReputationMetricsEnabled = TRUE|FALSE,
        LastFreshStart = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_configuration_set(
      ConfigurationSetName = "string",
      ConfigurationSetAttributeNames = list(
        "eventDestinations"|"trackingOptions"|"deliveryOptions"|"reputationOptions"
      )
    )
