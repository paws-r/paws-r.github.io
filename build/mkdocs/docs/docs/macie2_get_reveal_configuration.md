<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_reveal_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the status and configuration settings for retrieving occurrences of sensitive data reported by findings

### Description

Retrieves the status and configuration settings for retrieving
occurrences of sensitive data reported by findings.

### Usage

    macie2_get_reveal_configuration()

### Value

A list with the following syntax:

    list(
      configuration = list(
        kmsKeyId = "string",
        status = "ENABLED"|"DISABLED"
      )
    )

### Request syntax

    svc$get_reveal_configuration()
