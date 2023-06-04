<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_open_id_connect_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified OpenID Connect (OIDC) provider resource object in IAM

### Description

Returns information about the specified OpenID Connect (OIDC) provider
resource object in IAM.

### Usage

    iam_get_open_id_connect_provider(OpenIDConnectProviderArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_get_open_id_connect_provider_:_OpenIDConnectProviderArn">OpenIDConnectProviderArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the OIDC provider
resource object in IAM to get information for. You can get a list of
OIDC provider resource ARNs by using the
<code>list_open_id_connect_providers</code> operation.</p>
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
      Url = "string",
      ClientIDList = list(
        "string"
      ),
      ThumbprintList = list(
        "string"
      ),
      CreateDate = as.POSIXct(
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

    svc$get_open_id_connect_provider(
      OpenIDConnectProviderArn = "string"
    )
