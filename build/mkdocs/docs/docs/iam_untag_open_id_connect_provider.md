<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_untag_open_id_connect_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified tags from the specified OpenID Connect (OIDC)-compatible identity provider in IAM

### Description

Removes the specified tags from the specified OpenID Connect
(OIDC)-compatible identity provider in IAM. For more information about
OIDC providers, see [About web identity
federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html).
For more information about tagging, see [Tagging IAM
resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html)
in the *IAM User Guide*.

### Usage

    iam_untag_open_id_connect_provider(OpenIDConnectProviderArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_untag_open_id_connect_provider_:_OpenIDConnectProviderArn">OpenIDConnectProviderArn</code></td>
<td><p>[required] The ARN of the OIDC provider in IAM from which you
want to remove tags.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_untag_open_id_connect_provider_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of key names as a simple array of strings. The
tags with matching keys are removed from the specified OIDC
provider.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_open_id_connect_provider(
      OpenIDConnectProviderArn = "string",
      TagKeys = list(
        "string"
      )
    )
