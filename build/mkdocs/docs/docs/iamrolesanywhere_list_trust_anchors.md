<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iamrolesanywhere_list_trust_anchors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the trust anchors in the authenticated account and Amazon Web Services Region

### Description

Lists the trust anchors in the authenticated account and Amazon Web
Services Region.

**Required permissions:** `rolesanywhere:ListTrustAnchors`.

### Usage

    iamrolesanywhere_list_trust_anchors(nextToken, pageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iamrolesanywhere_list_trust_anchors_:_nextToken">nextToken</code></td>
<td><p>A token that indicates where the output should continue from, if
a previous request did not show all results. To get the next results,
make the request again with this value.</p></td>
</tr>
<tr class="even">
<td><code
id="iamrolesanywhere_list_trust_anchors_:_pageSize">pageSize</code></td>
<td><p>The number of resources in the paginated list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      trustAnchors = list(
        list(
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          enabled = TRUE|FALSE,
          name = "string",
          notificationSettings = list(
            list(
              channel = "ALL",
              configuredBy = "string",
              enabled = TRUE|FALSE,
              event = "CA_CERTIFICATE_EXPIRY"|"END_ENTITY_CERTIFICATE_EXPIRY",
              threshold = 123
            )
          ),
          source = list(
            sourceData = list(
              acmPcaArn = "string",
              x509CertificateData = "string"
            ),
            sourceType = "AWS_ACM_PCA"|"CERTIFICATE_BUNDLE"|"SELF_SIGNED_REPOSITORY"
          ),
          trustAnchorArn = "string",
          trustAnchorId = "string",
          updatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_trust_anchors(
      nextToken = "string",
      pageSize = 123
    )
