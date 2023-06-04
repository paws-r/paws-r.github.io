<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_saml_providers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the SAML provider resource objects defined in IAM in the account

### Description

Lists the SAML provider resource objects defined in IAM in the account.
IAM resource-listing operations return a subset of the available
attributes for the resource. For example, this operation does not return
tags, even though they are an attribute of the returned object. To view
all of the information for a SAML provider, see `get_saml_provider`.

This operation requires [Signature Version
4](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html).

### Usage

    iam_list_saml_providers()

### Value

A list with the following syntax:

    list(
      SAMLProviderList = list(
        list(
          Arn = "string",
          ValidUntil = as.POSIXct(
            "2015-01-01"
          ),
          CreateDate = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_saml_providers()
