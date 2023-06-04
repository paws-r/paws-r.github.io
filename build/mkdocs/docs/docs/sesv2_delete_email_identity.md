<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_delete_email_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an email identity

### Description

Deletes an email identity. An identity can be either an email address or
a domain name.

### Usage

    sesv2_delete_email_identity(EmailIdentity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_delete_email_identity_:_EmailIdentity">EmailIdentity</code></td>
<td><p>[required] The identity (that is, the email address or domain) to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_email_identity(
      EmailIdentity = "string"
    )
