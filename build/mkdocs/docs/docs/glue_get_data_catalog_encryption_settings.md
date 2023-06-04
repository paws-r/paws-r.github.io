<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_data_catalog_encryption_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the security configuration for a specified catalog

### Description

Retrieves the security configuration for a specified catalog.

### Usage

    glue_get_data_catalog_encryption_settings(CatalogId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_data_catalog_encryption_settings_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog to retrieve the security configuration
for. If none is provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataCatalogEncryptionSettings = list(
        EncryptionAtRest = list(
          CatalogEncryptionMode = "DISABLED"|"SSE-KMS",
          SseAwsKmsKeyId = "string"
        ),
        ConnectionPasswordEncryption = list(
          ReturnConnectionPasswordEncrypted = TRUE|FALSE,
          AwsKmsKeyId = "string"
        )
      )
    )

### Request syntax

    svc$get_data_catalog_encryption_settings(
      CatalogId = "string"
    )
