<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_saml_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the SAML provider metadocument that was uploaded when the IAM SAML provider resource object was created or updated

### Description

Returns the SAML provider metadocument that was uploaded when the IAM
SAML provider resource object was created or updated.

This operation requires [Signature Version
4](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html).

### Usage

    iam_get_saml_provider(SAMLProviderArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_get_saml_provider_:_SAMLProviderArn">SAMLProviderArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the SAML provider
resource object in IAM to get information about.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SAMLMetadataDocument = "string",
      CreateDate = as.POSIXct(
        "2015-01-01"
      ),
      ValidUntil = as.POSIXct(
        "2015-01-01"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$get_saml_provider(
      SAMLProviderArn = "string"
    )
