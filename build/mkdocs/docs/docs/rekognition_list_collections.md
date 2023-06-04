<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_list_collections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns list of collection IDs in your account

### Description

Returns list of collection IDs in your account. If the result is
truncated, the response also provides a `NextToken` that you can use in
the subsequent request to fetch the next set of collection IDs.

For an example, see Listing collections in the Amazon Rekognition
Developer Guide.

This operation requires permissions to perform the
`rekognition:ListCollections` action.

### Usage

    rekognition_list_collections(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_list_collections_:_NextToken">NextToken</code></td>
<td><p>Pagination token from the previous response.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_list_collections_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of collection IDs to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CollectionIds = list(
        "string"
      ),
      NextToken = "string",
      FaceModelVersions = list(
        "string"
      )
    )

### Request syntax

    svc$list_collections(
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # This operation returns a list of Rekognition collections.
    svc$list_collections()

    ## End(Not run)
