<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_update_field_level_encryption_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a field-level encryption configuration

### Description

Update a field-level encryption configuration.

### Usage

    cloudfront_update_field_level_encryption_config(
      FieldLevelEncryptionConfig, Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_update_field_level_encryption_config_:_FieldLevelEncryptionConfig">FieldLevelEncryptionConfig</code></td>
<td><p>[required] Request to update a field-level encryption
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_update_field_level_encryption_config_:_Id">Id</code></td>
<td><p>[required] The ID of the configuration you want to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_update_field_level_encryption_config_:_IfMatch">IfMatch</code></td>
<td><p>The value of the <code>ETag</code> header that you received when
retrieving the configuration identity to update. For example:
<code>E2QWRUHAPOMQZL</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FieldLevelEncryption = list(
        Id = "string",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        FieldLevelEncryptionConfig = list(
          CallerReference = "string",
          Comment = "string",
          QueryArgProfileConfig = list(
            ForwardWhenQueryArgProfileIsUnknown = TRUE|FALSE,
            QueryArgProfiles = list(
              Quantity = 123,
              Items = list(
                list(
                  QueryArg = "string",
                  ProfileId = "string"
                )
              )
            )
          ),
          ContentTypeProfileConfig = list(
            ForwardWhenContentTypeIsUnknown = TRUE|FALSE,
            ContentTypeProfiles = list(
              Quantity = 123,
              Items = list(
                list(
                  Format = "URLEncoded",
                  ProfileId = "string",
                  ContentType = "string"
                )
              )
            )
          )
        )
      ),
      ETag = "string"
    )

### Request syntax

    svc$update_field_level_encryption_config(
      FieldLevelEncryptionConfig = list(
        CallerReference = "string",
        Comment = "string",
        QueryArgProfileConfig = list(
          ForwardWhenQueryArgProfileIsUnknown = TRUE|FALSE,
          QueryArgProfiles = list(
            Quantity = 123,
            Items = list(
              list(
                QueryArg = "string",
                ProfileId = "string"
              )
            )
          )
        ),
        ContentTypeProfileConfig = list(
          ForwardWhenContentTypeIsUnknown = TRUE|FALSE,
          ContentTypeProfiles = list(
            Quantity = 123,
            Items = list(
              list(
                Format = "URLEncoded",
                ProfileId = "string",
                ContentType = "string"
              )
            )
          )
        )
      ),
      Id = "string",
      IfMatch = "string"
    )
