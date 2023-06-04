<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_field_level_encryption_profiles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Request a list of field-level encryption profiles that have been created in CloudFront for this account

### Description

Request a list of field-level encryption profiles that have been created
in CloudFront for this account.

### Usage

    cloudfront_list_field_level_encryption_profiles(Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_list_field_level_encryption_profiles_:_Marker">Marker</code></td>
<td><p>Use this when paginating results to indicate where to begin in
your list of profiles. The results include profiles in the list that
occur after the marker. To get the next page of results, set the
<code>Marker</code> to the value of the <code>NextMarker</code> from the
current page's response (which is also the ID of the last profile on
that page).</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_list_field_level_encryption_profiles_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of field-level encryption profiles you want in
the response body.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FieldLevelEncryptionProfileList = list(
        NextMarker = "string",
        MaxItems = 123,
        Quantity = 123,
        Items = list(
          list(
            Id = "string",
            LastModifiedTime = as.POSIXct(
              "2015-01-01"
            ),
            Name = "string",
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
            ),
            Comment = "string"
          )
        )
      )
    )

### Request syntax

    svc$list_field_level_encryption_profiles(
      Marker = "string",
      MaxItems = "string"
    )
