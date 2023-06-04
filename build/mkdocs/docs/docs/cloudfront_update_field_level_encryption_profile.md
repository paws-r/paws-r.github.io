<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_update_field_level_encryption_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a field-level encryption profile

### Description

Update a field-level encryption profile.

### Usage

    cloudfront_update_field_level_encryption_profile(
      FieldLevelEncryptionProfileConfig, Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_update_field_level_encryption_profile_:_FieldLevelEncryptionProfileConfig">FieldLevelEncryptionProfileConfig</code></td>
<td><p>[required] Request to update a field-level encryption
profile.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_update_field_level_encryption_profile_:_Id">Id</code></td>
<td><p>[required] The ID of the field-level encryption profile
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_update_field_level_encryption_profile_:_IfMatch">IfMatch</code></td>
<td><p>The value of the <code>ETag</code> header that you received when
retrieving the profile identity to update. For example:
<code>E2QWRUHAPOMQZL</code>.</p></td>
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
      ETag = "string"
    )

### Request syntax

    svc$update_field_level_encryption_profile(
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
      ),
      Id = "string",
      IfMatch = "string"
    )
