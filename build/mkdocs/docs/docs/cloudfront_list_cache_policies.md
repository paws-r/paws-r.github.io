<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_cache_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of cache policies

### Description

Gets a list of cache policies.

You can optionally apply a filter to return only the managed policies
created by Amazon Web Services, or only the custom policies created in
your Amazon Web Services account.

You can optionally specify the maximum number of items to receive in the
response. If the total number of items in the list exceeds the maximum
that you specify, or the default maximum, the response is paginated. To
get the next page of items, send a subsequent request that specifies the
`NextMarker` value from the current response as the `Marker` value in
the subsequent request.

### Usage

    cloudfront_list_cache_policies(Type, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_list_cache_policies_:_Type">Type</code></td>
<td><p>A filter to return only the specified kinds of cache policies.
Valid values are:</p>
<ul>
<li><p><code>managed</code> – Returns only the managed policies created
by Amazon Web Services.</p></li>
<li><p><code>custom</code> – Returns only the custom policies created in
your Amazon Web Services account.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_list_cache_policies_:_Marker">Marker</code></td>
<td><p>Use this field when paginating results to indicate where to begin
in your list of cache policies. The response includes cache policies in
the list that occur after the marker. To get the next page of the list,
set this field's value to the value of <code>NextMarker</code> from the
current page's response.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_list_cache_policies_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of cache policies that you want in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CachePolicyList = list(
        NextMarker = "string",
        MaxItems = 123,
        Quantity = 123,
        Items = list(
          list(
            Type = "managed"|"custom",
            CachePolicy = list(
              Id = "string",
              LastModifiedTime = as.POSIXct(
                "2015-01-01"
              ),
              CachePolicyConfig = list(
                Comment = "string",
                Name = "string",
                DefaultTTL = 123,
                MaxTTL = 123,
                MinTTL = 123,
                ParametersInCacheKeyAndForwardedToOrigin = list(
                  EnableAcceptEncodingGzip = TRUE|FALSE,
                  EnableAcceptEncodingBrotli = TRUE|FALSE,
                  HeadersConfig = list(
                    HeaderBehavior = "none"|"whitelist",
                    Headers = list(
                      Quantity = 123,
                      Items = list(
                        "string"
                      )
                    )
                  ),
                  CookiesConfig = list(
                    CookieBehavior = "none"|"whitelist"|"allExcept"|"all",
                    Cookies = list(
                      Quantity = 123,
                      Items = list(
                        "string"
                      )
                    )
                  ),
                  QueryStringsConfig = list(
                    QueryStringBehavior = "none"|"whitelist"|"allExcept"|"all",
                    QueryStrings = list(
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
        )
      )
    )

### Request syntax

    svc$list_cache_policies(
      Type = "managed"|"custom",
      Marker = "string",
      MaxItems = "string"
    )
