<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_open_id_connect_providers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists information about the IAM OpenID Connect (OIDC) provider resource objects defined in the Amazon Web Services account

### Description

Lists information about the IAM OpenID Connect (OIDC) provider resource
objects defined in the Amazon Web Services account.

IAM resource-listing operations return a subset of the available
attributes for the resource. For example, this operation does not return
tags, even though they are an attribute of the returned object. To view
all of the information for an OIDC provider, see
`get_open_id_connect_provider`.

### Usage

    iam_list_open_id_connect_providers()

### Value

A list with the following syntax:

    list(
      OpenIDConnectProviderList = list(
        list(
          Arn = "string"
        )
      )
    )

### Request syntax

    svc$list_open_id_connect_providers()
