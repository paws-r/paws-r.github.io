<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_put_configuration_set_delivery_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates the delivery options for a configuration set

### Description

Adds or updates the delivery options for a configuration set.

### Usage

    ses_put_configuration_set_delivery_options(ConfigurationSetName,
      DeliveryOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_put_configuration_set_delivery_options_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set that you want to
specify the delivery options for.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_put_configuration_set_delivery_options_:_DeliveryOptions">DeliveryOptions</code></td>
<td><p>Specifies whether messages that use the configuration set are
required to use Transport Layer Security (TLS).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_configuration_set_delivery_options(
      ConfigurationSetName = "string",
      DeliveryOptions = list(
        TlsPolicy = "Require"|"Optional"
      )
    )
