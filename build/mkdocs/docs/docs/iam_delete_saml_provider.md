<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_saml_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a SAML provider resource in IAM

### Description

Deletes a SAML provider resource in IAM.

Deleting the provider resource from IAM does not update any roles that
reference the SAML provider resource's ARN as a principal in their trust
policies. Any attempt to assume a role that references a non-existent
provider resource ARN fails.

This operation requires [Signature Version
4](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html).

### Usage

    iam_delete_saml_provider(SAMLProviderArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_delete_saml_provider_:_SAMLProviderArn">SAMLProviderArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the SAML provider to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_saml_provider(
      SAMLProviderArn = "string"
    )
