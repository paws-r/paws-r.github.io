<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_get_configuration_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get information about an existing configuration set, including the dedicated IP pool that it's associated with, whether or not it's enabled for sending email, and more

### Description

Get information about an existing configuration set, including the
dedicated IP pool that it's associated with, whether or not it's enabled
for sending email, and more.

In Amazon Pinpoint, *configuration sets* are groups of rules that you
can apply to the emails you send. You apply a configuration set to an
email by including a reference to the configuration set in the headers
of the email. When you apply a configuration set to an email, all of the
rules in that configuration set are applied to the email.

### Usage

    pinpointemail_get_configuration_set(ConfigurationSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_get_configuration_set_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set that you want to
obtain more information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationSetName = "string",
      TrackingOptions = list(
        CustomRedirectDomain = "string"
      ),
      DeliveryOptions = list(
        TlsPolicy = "REQUIRE"|"OPTIONAL",
        SendingPoolName = "string"
      ),
      ReputationOptions = list(
        ReputationMetricsEnabled = TRUE|FALSE,
        LastFreshStart = as.POSIXct(
          "2015-01-01"
        )
      ),
      SendingOptions = list(
        SendingEnabled = TRUE|FALSE
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$get_configuration_set(
      ConfigurationSetName = "string"
    )
