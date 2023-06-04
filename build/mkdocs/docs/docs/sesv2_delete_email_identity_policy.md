<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_delete_email_identity_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified sending authorization policy for the given identity (an email address or a domain)

### Description

Deletes the specified sending authorization policy for the given
identity (an email address or a domain). This API returns successfully
even if a policy with the specified name does not exist.

This API is for the identity owner only. If you have not verified the
identity, this API will return an error.

Sending authorization is a feature that enables an identity owner to
authorize other senders to use its identities. For information about
using sending authorization, see the [Amazon SES Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html).

You can execute this operation no more than once per second.

### Usage

    sesv2_delete_email_identity_policy(EmailIdentity, PolicyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_delete_email_identity_policy_:_EmailIdentity">EmailIdentity</code></td>
<td><p>[required] The email identity.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_delete_email_identity_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the policy.</p>
<p>The policy name cannot exceed 64 characters and can only include
alphanumeric characters, dashes, and underscores.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_email_identity_policy(
      EmailIdentity = "string",
      PolicyName = "string"
    )
