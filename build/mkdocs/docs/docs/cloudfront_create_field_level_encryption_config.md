<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_create_field_level_encryption_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new field-level encryption configuration

### Description

Create a new field-level encryption configuration.

### Usage

    cloudfront_create_field_level_encryption_config(
      FieldLevelEncryptionConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_create_field_level_encryption_config_:_FieldLevelEncryptionConfig">FieldLevelEncryptionConfig</code></td>
<td><p>[required] The request to create a new field-level encryption
configuration.</p></td>
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
      Location = "string",
      ETag = "string"
    )

### Request syntax

    svc$create_field_level_encryption_config(
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
    )
