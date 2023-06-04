<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_put_identity_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates a sending authorization policy for the specified identity (an email address or a domain)

### Description

Adds or updates a sending authorization policy for the specified
identity (an email address or a domain).

This API is for the identity owner only. If you have not verified the
identity, this API will return an error.

Sending authorization is a feature that enables an identity owner to
authorize other senders to use its identities. For information about
using sending authorization, see the [Amazon SES Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html).

You can execute this operation no more than once per second.

### Usage

    ses_put_identity_policy(Identity, PolicyName, Policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ses_put_identity_policy_:_Identity">Identity</code></td>
<td><p>[required] The identity that the policy will apply to. You can
specify an identity by using its name or by using its Amazon Resource
Name (ARN). Examples: <code>user@example.com</code>,
<code>example.com</code>,
<code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
<p>To successfully call this API, you must own the identity.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_put_identity_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the policy.</p>
<p>The policy name cannot exceed 64 characters and can only include
alphanumeric characters, dashes, and underscores.</p></td>
</tr>
<tr class="odd">
<td><code id="ses_put_identity_policy_:_Policy">Policy</code></td>
<td><p>[required] The text of the policy in JSON format. The policy
cannot exceed 4 KB.</p>
<p>For information about the syntax of sending authorization policies,
see the <a href="https://docs.aws.amazon.com/ses/latest/dg/">Amazon SES
Developer Guide</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_identity_policy(
      Identity = "string",
      PolicyName = "string",
      Policy = "string"
    )

### Examples

    ## Not run: 
    # The following example adds a sending authorization policy to an
    # identity:
    svc$put_identity_policy(
      Identity = "example.com",
      Policy = "{"Version":"2008-10-17","Statement":[{"Sid":"stmt1469123904194"...",
      PolicyName = "MyPolicy"
    )

    ## End(Not run)
