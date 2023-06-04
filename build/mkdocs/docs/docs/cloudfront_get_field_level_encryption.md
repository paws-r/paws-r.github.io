<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_get_field_level_encryption</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the field-level encryption configuration information

### Description

Get the field-level encryption configuration information.

### Usage

    cloudfront_get_field_level_encryption(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_get_field_level_encryption_:_Id">Id</code></td>
<td><p>[required] Request the ID for the field-level encryption
configuration information.</p></td>
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

    svc$get_field_level_encryption(
      Id = "string"
    )
