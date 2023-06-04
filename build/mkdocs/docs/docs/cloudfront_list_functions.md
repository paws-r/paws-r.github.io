<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_functions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of all CloudFront functions in your Amazon Web Services account

### Description

Gets a list of all CloudFront functions in your Amazon Web Services
account.

You can optionally apply a filter to return only the functions that are
in the specified stage, either `DEVELOPMENT` or `LIVE`.

You can optionally specify the maximum number of items to receive in the
response. If the total number of items in the list exceeds the maximum
that you specify, or the default maximum, the response is paginated. To
get the next page of items, send a subsequent request that specifies the
`NextMarker` value from the current response as the `Marker` value in
the subsequent request.

### Usage

    cloudfront_list_functions(Marker, MaxItems, Stage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_list_functions_:_Marker">Marker</code></td>
<td><p>Use this field when paginating results to indicate where to begin
in your list of functions. The response includes functions in the list
that occur after the marker. To get the next page of the list, set this
field's value to the value of <code>NextMarker</code> from the current
page's response.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_list_functions_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of functions that you want in the
response.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudfront_list_functions_:_Stage">Stage</code></td>
<td><p>An optional filter to return only the functions that are in the
specified stage, either <code>DEVELOPMENT</code> or
<code>LIVE</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FunctionList = list(
        NextMarker = "string",
        MaxItems = 123,
        Quantity = 123,
        Items = list(
          list(
            Name = "string",
            Status = "string",
            FunctionConfig = list(
              Comment = "string",
              Runtime = "cloudfront-js-1.0"
            ),
            FunctionMetadata = list(
              FunctionARN = "string",
              Stage = "DEVELOPMENT"|"LIVE",
              CreatedTime = as.POSIXct(
                "2015-01-01"
              ),
              LastModifiedTime = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$list_functions(
      Marker = "string",
      MaxItems = "string",
      Stage = "DEVELOPMENT"|"LIVE"
    )
