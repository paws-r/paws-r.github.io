<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_update_reveal_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the status and configuration settings for retrieving occurrences of sensitive data reported by findings

### Description

Updates the status and configuration settings for retrieving occurrences
of sensitive data reported by findings.

### Usage

    macie2_update_reveal_configuration(configuration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_update_reveal_configuration_:_configuration">configuration</code></td>
<td><p>[required] The new configuration settings and the status of the
configuration for the account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      configuration = list(
        kmsKeyId = "string",
        status = "ENABLED"|"DISABLED"
      )
    )

### Request syntax

    svc$update_reveal_configuration(
      configuration = list(
        kmsKeyId = "string",
        status = "ENABLED"|"DISABLED"
      )
    )
