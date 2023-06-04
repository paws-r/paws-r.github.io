<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_bots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns bot information as follows:

### Description

Returns bot information as follows:

-   If you provide the `nameContains` field, the response includes
    information for the `⁠$LATEST⁠` version of all bots whose name
    contains the specified string.

-   If you don't specify the `nameContains` field, the operation returns
    information about the `⁠$LATEST⁠` version of all of your bots.

This operation requires permission for the `lex:GetBots` action.

### Usage

    lexmodelbuildingservice_get_bots(nextToken, maxResults, nameContains)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_bots_:_nextToken">nextToken</code></td>
<td><p>A pagination token that fetches the next page of bots. If the
response to this call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of bots, specify the
pagination token in the next request.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_bots_:_maxResults">maxResults</code></td>
<td><p>The maximum number of bots to return in the response that the
request will return. The default is 10.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_bots_:_nameContains">nameContains</code></td>
<td><p>Substring to match in bot names. A bot will be returned if any
part of its name matches the substring. For example, "xyz" matches both
"xyzabc" and "abcxyz."</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      bots = list(
        list(
          name = "string",
          description = "string",
          status = "BUILDING"|"READY"|"READY_BASIC_TESTING"|"FAILED"|"NOT_BUILT",
          lastUpdatedDate = as.POSIXct(
            "2015-01-01"
          ),
          createdDate = as.POSIXct(
            "2015-01-01"
          ),
          version = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_bots(
      nextToken = "string",
      maxResults = 123,
      nameContains = "string"
    )

### Examples

    ## Not run: 
    # This example shows how to get a list of all of the bots in your account.
    svc$get_bots(
      maxResults = 5L,
      nextToken = ""
    )

    ## End(Not run)
