<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_get_identity_policies</td>
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

    ses_get_identity_policies(Identity, PolicyNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ses_get_identity_policies_:_Identity">Identity</code></td>
<td><p>[required] The identity for which the policies will be retrieved.
You can specify an identity by using its name or by using its Amazon
Resource Name (ARN). Examples: <code>user@example.com</code>,
<code>example.com</code>,
<code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
<p>To successfully call this API, you must own the identity.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_get_identity_policies_:_PolicyNames">PolicyNames</code></td>
<td><p>[required] A list of the names of policies to be retrieved. You
can retrieve a maximum of 20 policies at a time. If you do not know the
names of the policies that are attached to the identity, you can use
<code>list_identity_policies</code>.</p></td>
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

    svc$get_identity_policies(
      Identity = "string",
      PolicyNames = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example returns a sending authorization policy for an
    # identity:
    svc$get_identity_policies(
      Identity = "example.com",
      PolicyNames = list(
        "MyPolicy"
      )
    )

    ## End(Not run)
