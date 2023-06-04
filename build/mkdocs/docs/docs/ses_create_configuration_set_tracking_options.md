<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_create_configuration_set_tracking_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an association between a configuration set and a custom domain for open and click event tracking

### Description

Creates an association between a configuration set and a custom domain
for open and click event tracking.

By default, images and links used for tracking open and click events are
hosted on domains operated by Amazon SES. You can configure a subdomain
of your own to handle these events. For information about using custom
domains, see the [Amazon SES Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/configure-custom-open-click-domains.html).

### Usage

    ses_create_configuration_set_tracking_options(ConfigurationSetName,
      TrackingOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_create_configuration_set_tracking_options_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set that the tracking
options should be associated with.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_create_configuration_set_tracking_options_:_TrackingOptions">TrackingOptions</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_configuration_set_tracking_options(
      ConfigurationSetName = "string",
      TrackingOptions = list(
        CustomRedirectDomain = "string"
      )
    )
