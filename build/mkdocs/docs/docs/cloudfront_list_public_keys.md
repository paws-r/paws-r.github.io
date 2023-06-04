<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_public_keys</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all public keys that have been added to CloudFront for this account

### Description

List all public keys that have been added to CloudFront for this
account.

### Usage

    cloudfront_list_public_keys(Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_list_public_keys_:_Marker">Marker</code></td>
<td><p>Use this when paginating results to indicate where to begin in
your list of public keys. The results include public keys in the list
that occur after the marker. To get the next page of results, set the
<code>Marker</code> to the value of the <code>NextMarker</code> from the
current page's response (which is also the ID of the last public key on
that page).</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_list_public_keys_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of public keys you want in the response
body.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PublicKeyList = list(
        NextMarker = "string",
        MaxItems = 123,
        Quantity = 123,
        Items = list(
          list(
            Id = "string",
            Name = "string",
            CreatedTime = as.POSIXct(
              "2015-01-01"
            ),
            EncodedKey = "string",
            Comment = "string"
          )
        )
      )
    )

### Request syntax

    svc$list_public_keys(
      Marker = "string",
      MaxItems = "string"
    )
