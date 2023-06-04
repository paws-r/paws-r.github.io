<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_delete_identity_policy</td>
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

    ses_delete_identity_policy(Identity, PolicyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_delete_identity_policy_:_Identity">Identity</code></td>
<td><p>[required] The identity that is associated with the policy that
you want to delete. You can specify the identity by using its name or by
using its Amazon Resource Name (ARN). Examples:
<code>user@example.com</code>, <code>example.com</code>,
<code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
<p>To successfully call this API, you must own the identity.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_delete_identity_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the policy to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_identity_policy(
      Identity = "string",
      PolicyName = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes a sending authorization policy for an
    # identity:
    svc$delete_identity_policy(
      Identity = "user@example.com",
      PolicyName = "MyPolicy"
    )

    ## End(Not run)
