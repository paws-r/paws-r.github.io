<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_download_default_key_pair</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Downloads the regional Amazon Lightsail default key pair

### Description

Downloads the regional Amazon Lightsail default key pair.

This action also creates a Lightsail default key pair if a default key
pair does not currently exist in the Amazon Web Services Region.

### Usage

    lightsail_download_default_key_pair()

### Value

A list with the following syntax:

    list(
      publicKeyBase64 = "string",
      privateKeyBase64 = "string",
      createdAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$download_default_key_pair()
