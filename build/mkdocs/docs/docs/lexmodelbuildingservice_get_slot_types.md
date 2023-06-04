<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_slot_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns slot type information as follows:

### Description

Returns slot type information as follows:

-   If you specify the `nameContains` field, returns the `⁠$LATEST⁠`
    version of all slot types that contain the specified string.

-   If you don't specify the `nameContains` field, returns information
    about the `⁠$LATEST⁠` version of all slot types.

The operation requires permission for the `lex:GetSlotTypes` action.

### Usage

    lexmodelbuildingservice_get_slot_types(nextToken, maxResults,
      nameContains)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_slot_types_:_nextToken">nextToken</code></td>
<td><p>A pagination token that fetches the next page of slot types. If
the response to this API call is truncated, Amazon Lex returns a
pagination token in the response. To fetch next page of slot types,
specify the pagination token in the next request.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_slot_types_:_maxResults">maxResults</code></td>
<td><p>The maximum number of slot types to return in the response. The
default is 10.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_slot_types_:_nameContains">nameContains</code></td>
<td><p>Substring to match in slot type names. A slot type will be
returned if any part of its name matches the substring. For example,
"xyz" matches both "xyzabc" and "abcxyz."</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      slotTypes = list(
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

    svc$get_slot_types(
      nextToken = "string",
      maxResults = 123,
      nameContains = "string"
    )

### Examples

    ## Not run: 
    # This example shows how to get a list of all of the slot types in your
    # account.
    svc$get_slot_types(
      maxResults = 10L,
      nextToken = ""
    )

    ## End(Not run)
