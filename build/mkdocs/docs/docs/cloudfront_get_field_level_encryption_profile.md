<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_get_field_level_encryption_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the field-level encryption profile information

### Description

Get the field-level encryption profile information.

### Usage

    cloudfront_get_field_level_encryption_profile(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_get_field_level_encryption_profile_:_Id">Id</code></td>
<td><p>[required] Get the ID for the field-level encryption profile
information.</p></td>
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

    svc$get_field_level_encryption_profile(
      Id = "string"
    )
