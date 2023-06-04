<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_put_configuration_set_delivery_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associate a configuration set with a dedicated IP pool

### Description

Associate a configuration set with a dedicated IP pool. You can use
dedicated IP pools to create groups of dedicated IP addresses for
sending specific types of email.

### Usage

    sesv2_put_configuration_set_delivery_options(ConfigurationSetName,
      TlsPolicy, SendingPoolName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_put_configuration_set_delivery_options_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set to associate with a
dedicated IP pool.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_put_configuration_set_delivery_options_:_TlsPolicy">TlsPolicy</code></td>
<td><p>Specifies whether messages that use the configuration set are
required to use Transport Layer Security (TLS). If the value is
<code>Require</code>, messages are only delivered if a TLS connection
can be established. If the value is <code>Optional</code>, messages can
be delivered in plain text if a TLS connection can't be
established.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_put_configuration_set_delivery_options_:_SendingPoolName">SendingPoolName</code></td>
<td><p>The name of the dedicated IP pool to associate with the
configuration set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_configuration_set_delivery_options(
      ConfigurationSetName = "string",
      TlsPolicy = "REQUIRE"|"OPTIONAL",
      SendingPoolName = "string"
    )
