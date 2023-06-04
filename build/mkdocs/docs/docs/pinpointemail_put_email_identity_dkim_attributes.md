<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_put_email_identity_dkim_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to enable or disable DKIM authentication for an email identity

### Description

Used to enable or disable DKIM authentication for an email identity.

### Usage

    pinpointemail_put_email_identity_dkim_attributes(EmailIdentity,
      SigningEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_put_email_identity_dkim_attributes_:_EmailIdentity">EmailIdentity</code></td>
<td><p>[required] The email identity that you want to change the DKIM
settings for.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_put_email_identity_dkim_attributes_:_SigningEnabled">SigningEnabled</code></td>
<td><p>Sets the DKIM signing configuration for the identity.</p>
<p>When you set this value <code>true</code>, then the messages that
Amazon Pinpoint sends from the identity are DKIM-signed. When you set
this value to <code>false</code>, then the messages that Amazon Pinpoint
sends from the identity aren't DKIM-signed.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_email_identity_dkim_attributes(
      EmailIdentity = "string",
      SigningEnabled = TRUE|FALSE
    )
