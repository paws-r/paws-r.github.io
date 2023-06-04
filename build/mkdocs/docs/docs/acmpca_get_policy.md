<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_get_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the resource-based policy attached to a private CA

### Description

Retrieves the resource-based policy attached to a private CA. If either
the private CA resource or the policy cannot be found, this action
returns a `ResourceNotFoundException`.

The policy can be attached or updated with `put_policy` and removed with
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

    acmpca_get_policy(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="acmpca_get_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of the private CA
that will have its policy retrieved. You can find the CA's ARN by
calling the ListCertificateAuthorities action.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = "string"
    )

### Request syntax

    svc$get_policy(
      ResourceArn = "string"
    )
