<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iamrolesanywhere_update_trust_anchor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a trust anchor

### Description

Updates a trust anchor. You establish trust between IAM Roles Anywhere
and your certificate authority (CA) by configuring a trust anchor. You
can define a trust anchor as a reference to an Private Certificate
Authority (Private CA) or by uploading a CA certificate. Your Amazon Web
Services workloads can authenticate with the trust anchor using
certificates issued by the CA in exchange for temporary Amazon Web
Services credentials.

**Required permissions:** `rolesanywhere:UpdateTrustAnchor`.

### Usage

    iamrolesanywhere_update_trust_anchor(name, source, trustAnchorId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iamrolesanywhere_update_trust_anchor_:_name">name</code></td>
<td><p>The name of the trust anchor.</p></td>
</tr>
<tr class="even">
<td><code
id="iamrolesanywhere_update_trust_anchor_:_source">source</code></td>
<td><p>The trust anchor type and its related certificate data.</p></td>
</tr>
<tr class="odd">
<td><code
id="iamrolesanywhere_update_trust_anchor_:_trustAnchorId">trustAnchorId</code></td>
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

    svc$update_trust_anchor(
      name = "string",
      source = list(
        sourceData = list(
          acmPcaArn = "string",
          x509CertificateData = "string"
        ),
        sourceType = "AWS_ACM_PCA"|"CERTIFICATE_BUNDLE"|"SELF_SIGNED_REPOSITORY"
      ),
      trustAnchorId = "string"
    )
