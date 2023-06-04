<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_put_findings_publication_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration settings for publishing findings to Security Hub

### Description

Updates the configuration settings for publishing findings to Security
Hub.

### Usage

    macie2_put_findings_publication_configuration(clientToken,
      securityHubConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_put_findings_publication_configuration_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive token that you provide to ensure the
idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_put_findings_publication_configuration_:_securityHubConfiguration">securityHubConfiguration</code></td>
<td><p>The configuration settings that determine which findings to
publish to Security Hub.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_findings_publication_configuration(
      clientToken = "string",
      securityHubConfiguration = list(
        publishClassificationFindings = TRUE|FALSE,
        publishPolicyFindings = TRUE|FALSE
      )
    )
