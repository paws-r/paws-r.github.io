<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iamrolesanywhere_disable_trust_anchor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables a trust anchor

### Description

Disables a trust anchor. When disabled, temporary credential requests
specifying this trust anchor are unauthorized.

**Required permissions:** `rolesanywhere:DisableTrustAnchor`.

### Usage

    iamrolesanywhere_disable_trust_anchor(trustAnchorId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iamrolesanywhere_disable_trust_anchor_:_trustAnchorId">trustAnchorId</code></td>
<td><p>[required] The unique identifier of the trust anchor.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      trustAnchor = list(
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

### Request syntax

    svc$disable_trust_anchor(
      trustAnchorId = "string"
    )
