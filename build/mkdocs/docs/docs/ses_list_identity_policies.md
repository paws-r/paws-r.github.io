<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_list_identity_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of sending authorization policies that are attached to the given identity (an email address or a domain)

### Description

Returns a list of sending authorization policies that are attached to
the given identity (an email address or a domain). This API returns only
a list. If you want the actual policy content, you can use
`get_identity_policies`.

This API is for the identity owner only. If you have not verified the
identity, this API will return an error.

Sending authorization is a feature that enables an identity owner to
authorize other senders to use its identities. For information about
using sending authorization, see the [Amazon SES Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html).

You can execute this operation no more than once per second.

### Usage

    ses_list_identity_policies(Identity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_list_identity_policies_:_Identity">Identity</code></td>
<td><p>[required] The identity that is associated with the policy for
which the policies will be listed. You can specify an identity by using
its name or by using its Amazon Resource Name (ARN). Examples:
<code>user@example.com</code>, <code>example.com</code>,
<code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
<p>To successfully call this API, you must own the identity.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyNames = list(
        "string"
      )
    )

### Request syntax

    svc$list_identity_policies(
      Identity = "string"
    )

### Examples

    ## Not run: 
    # The following example returns a list of sending authorization policies
    # that are attached to an identity:
    svc$list_identity_policies(
      Identity = "example.com"
    )

    ## End(Not run)
