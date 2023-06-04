<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_findings_publication_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the configuration settings for publishing findings to Security Hub

### Description

Retrieves the configuration settings for publishing findings to Security
Hub.

### Usage

    macie2_get_findings_publication_configuration()

### Value

A list with the following syntax:

    list(
      securityHubConfiguration = list(
        publishClassificationFindings = TRUE|FALSE,
        publishPolicyFindings = TRUE|FALSE
      )
    )

### Request syntax

    svc$get_findings_publication_configuration()
