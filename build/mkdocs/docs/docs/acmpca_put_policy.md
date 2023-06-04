<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_put_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches a resource-based policy to a private CA

### Description

Attaches a resource-based policy to a private CA.

A policy can also be applied by sharing a private CA through Amazon Web
Services Resource Access Manager (RAM). For more information, see
[Attach a Policy for Cross-Account
Access](https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html).

The policy can be displayed with `get_policy` and removed with
`delete_policy`.

**About Policies**

-   A policy grants access on a private CA to an Amazon Web Services
    customer account, to Amazon Web Services Organizations, or to an
    Amazon Web Services Organizations unit. Policies are under the
    control of a CA administrator. For more information, see [Using a
    Resource Based Policy with Amazon Web Services Private
    CA](https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html).

-   A policy permits a user of Certificate Manager (ACM) to issue ACM
    certificates signed by a CA in another account.

-   For ACM to manage automatic renewal of these certificates, the ACM
    user must configure a Service Linked Role (SLR). The SLR allows the
    ACM service to assume the identity of the user, subject to
    confirmation against the Amazon Web Services Private CA policy. For
    more information, see [Using a Service Linked Role with
    ACM](https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html).

-   Updates made in Amazon Web Services Resource Manager (RAM) are
    reflected in policies. For more information, see [Attach a Policy
    for Cross-Account
    Access](https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html).

### Usage

    acmpca_put_policy(ResourceArn, Policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="acmpca_put_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of the private CA to
associate with the policy. The ARN of the CA can be found by calling the
<code>list_certificate_authorities</code> action.</p></td>
</tr>
<tr class="even">
<td><code id="acmpca_put_policy_:_Policy">Policy</code></td>
<td><p>[required] The path and file name of a JSON-formatted IAM policy
to attach to the specified private CA resource. If this policy does not
contain all required statements or if it includes any statement that is
not allowed, the <code>put_policy</code> action returns an
<code>InvalidPolicyException</code>. For information about IAM policy
and statement structure, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json">Overview
of JSON Policies</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_policy(
      ResourceArn = "string",
      Policy = "string"
    )
