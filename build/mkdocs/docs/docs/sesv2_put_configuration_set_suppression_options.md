<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_put_configuration_set_suppression_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specify the account suppression list preferences for a configuration set

### Description

Specify the account suppression list preferences for a configuration
set.

### Usage

    sesv2_put_configuration_set_suppression_options(ConfigurationSetName,
      SuppressedReasons)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_put_configuration_set_suppression_options_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set to change the
suppression list preferences for.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_put_configuration_set_suppression_options_:_SuppressedReasons">SuppressedReasons</code></td>
<td><p>A list that contains the reasons that email addresses are
automatically added to the suppression list for your account. This list
can contain any or all of the following:</p>
<ul>
<li><p><code>COMPLAINT</code> – Amazon SES adds an email address to the
suppression list for your account when a message sent to that address
results in a complaint.</p></li>
<li><p><code>BOUNCE</code> – Amazon SES adds an email address to the
suppression list for your account when a message sent to that address
results in a hard bounce.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_configuration_set_suppression_options(
      ConfigurationSetName = "string",
      SuppressedReasons = list(
        "BOUNCE"|"COMPLAINT"
      )
    )
