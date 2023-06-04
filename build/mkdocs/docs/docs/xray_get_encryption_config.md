<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_get_encryption_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the current encryption configuration for X-Ray data

### Description

Retrieves the current encryption configuration for X-Ray data.

### Usage

    xray_get_encryption_config()

### Value

A list with the following syntax:

    list(
      EncryptionConfig = list(
        KeyId = "string",
        Status = "UPDATING"|"ACTIVE",
        Type = "NONE"|"KMS"
      )
    )

### Request syntax

    svc$get_encryption_config()
