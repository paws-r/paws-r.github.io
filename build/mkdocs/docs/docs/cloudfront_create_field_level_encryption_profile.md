<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_create_field_level_encryption_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a field-level encryption profile

### Description

Create a field-level encryption profile.

### Usage

    cloudfront_create_field_level_encryption_profile(
      FieldLevelEncryptionProfileConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_create_field_level_encryption_profile_:_FieldLevelEncryptionProfileConfig">FieldLevelEncryptionProfileConfig</code></td>
<td><p>[required] The request to create a field-level encryption
profile.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FieldLevelEncryptionProfile = list(
        Id = "string",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        FieldLevelEncryptionProfileConfig = list(
          Name = "string",
          CallerReference = "string",
          Comment = "string",
          EncryptionEntities = list(
            Quantity = 123,
            Items = list(
              list(
                PublicKeyId = "string",
                ProviderId = "string",
                FieldPatterns = list(
                  Quantity = 123,
                  Items = list(
                    "string"
                  )
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

    svc$create_field_level_encryption_profile(
      FieldLevelEncryptionProfileConfig = list(
        Name = "string",
        CallerReference = "string",
        Comment = "string",
        EncryptionEntities = list(
          Quantity = 123,
          Items = list(
            list(
              PublicKeyId = "string",
              ProviderId = "string",
              FieldPatterns = list(
                Quantity = 123,
                Items = list(
                  "string"
                )
              )
            )
          )
        )
      )
    )
