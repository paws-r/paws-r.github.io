<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_intents</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns intent information as follows:

### Description

Returns intent information as follows:

-   If you specify the `nameContains` field, returns the `⁠$LATEST⁠`
    version of all intents that contain the specified string.

-   If you don't specify the `nameContains` field, returns information
    about the `⁠$LATEST⁠` version of all intents.

The operation requires permission for the `lex:GetIntents` action.

### Usage

    lexmodelbuildingservice_get_intents(nextToken, maxResults, nameContains)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_intents_:_nextToken">nextToken</code></td>
<td><p>A pagination token that fetches the next page of intents. If the
response to this API call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of intents, specify the
pagination token in the next request.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_intents_:_maxResults">maxResults</code></td>
<td><p>The maximum number of intents to return in the response. The
default is 10.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_intents_:_nameContains">nameContains</code></td>
<td><p>Substring to match in intent names. An intent will be returned if
any part of its name matches the substring. For example, "xyz" matches
both "xyzabc" and "abcxyz."</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      intents = list(
        list(
          name = "string",
          description = "string",
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

    svc$get_intents(
      nextToken = "string",
      maxResults = 123,
      nameContains = "string"
    )

### Examples

    ## Not run: 
    # This example shows how to get a list of all of the intents in your
    # account.
    svc$get_intents(
      maxResults = 10L,
      nextToken = ""
    )

    ## End(Not run)
