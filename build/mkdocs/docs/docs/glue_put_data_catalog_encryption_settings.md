<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_put_data_catalog_encryption_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the security configuration for a specified catalog

### Description

Sets the security configuration for a specified catalog. After the
configuration has been set, the specified encryption is applied to every
catalog write thereafter.

### Usage

    glue_put_data_catalog_encryption_settings(CatalogId,
      DataCatalogEncryptionSettings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_put_data_catalog_encryption_settings_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog to set the security configuration for.
If none is provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_put_data_catalog_encryption_settings_:_DataCatalogEncryptionSettings">DataCatalogEncryptionSettings</code></td>
<td><p>[required] The security configuration to set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_data_catalog_encryption_settings(
      CatalogId = "string",
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
