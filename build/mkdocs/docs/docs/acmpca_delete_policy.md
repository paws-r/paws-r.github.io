<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_delete_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the resource-based policy attached to a private CA

### Description

Deletes the resource-based policy attached to a private CA. Deletion
will remove any access that the policy has granted. If there is no
policy attached to the private CA, this action will return successful.

If you delete a policy that was applied through Amazon Web Services
Resource Access Manager (RAM), the CA will be removed from all shares in
which it was included.

The Certificate Manager Service Linked Role that the policy supports is
not affected when you delete the policy.

The current policy can be shown with `get_policy` and updated with
`put_policy`.

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

    acmpca_delete_policy(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_delete_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of the private CA
that will have its policy deleted. You can find the CA's ARN by calling
the <code>list_certificate_authorities</code> action. The ARN value must
have the form <code
style="white-space: pre;">⁠arn:aws:acm-pca:region:account:certificate-authority/01234567-89ab-cdef-0123-0123456789ab⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_policy(
      ResourceArn = "string"
    )
