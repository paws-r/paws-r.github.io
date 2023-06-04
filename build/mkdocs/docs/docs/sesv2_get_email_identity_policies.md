<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_get_email_identity_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the requested sending authorization policies for the given identity (an email address or a domain)

### Description

Returns the requested sending authorization policies for the given
identity (an email address or a domain). The policies are returned as a
map of policy names to policy contents. You can retrieve a maximum of 20
policies at a time.

This API is for the identity owner only. If you have not verified the
identity, this API will return an error.

Sending authorization is a feature that enables an identity owner to
authorize other senders to use its identities. For information about
using sending authorization, see the [Amazon SES Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html).

You can execute this operation no more than once per second.

### Usage

    sesv2_get_email_identity_policies(EmailIdentity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_get_email_identity_policies_:_EmailIdentity">EmailIdentity</code></td>
<td><p>[required] The email identity.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policies = list(
        "string"
      )
    )

### Request syntax

    svc$get_email_identity_policies(
      EmailIdentity = "string"
    )
