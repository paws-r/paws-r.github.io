<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_put_email_identity_configuration_set_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to associate a configuration set with an email identity

### Description

Used to associate a configuration set with an email identity.

### Usage

    sesv2_put_email_identity_configuration_set_attributes(EmailIdentity,
      ConfigurationSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_put_email_identity_configuration_set_attributes_:_EmailIdentity">EmailIdentity</code></td>
<td><p>[required] The email address or domain to associate with a
configuration set.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_put_email_identity_configuration_set_attributes_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>The configuration set to associate with an email
identity.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_email_identity_configuration_set_attributes(
      EmailIdentity = "string",
      ConfigurationSetName = "string"
    )
