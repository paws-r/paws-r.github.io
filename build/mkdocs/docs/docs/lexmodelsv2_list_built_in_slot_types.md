<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_list_built_in_slot_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of built-in slot types that meet the specified criteria

### Description

Gets a list of built-in slot types that meet the specified criteria.

### Usage

    lexmodelsv2_list_built_in_slot_types(localeId, sortBy, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_list_built_in_slot_types_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale of the slot
types to list. The string must match one of the supported locales. For
more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_built_in_slot_types_:_sortBy">sortBy</code></td>
<td><p>Determines the sort order for the response from the
<code>list_built_in_slot_types</code> operation. You can choose to sort
by the slot type signature in either ascending or descending
order.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_built_in_slot_types_:_maxResults">maxResults</code></td>
<td><p>The maximum number of built-in slot types to return in each page
of results. If there are fewer results than the max page size, only the
actual number of results are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_built_in_slot_types_:_nextToken">nextToken</code></td>
<td><p>If the response from the <code>list_built_in_slot_types</code>
operation contains more results than specified in the
<code>maxResults</code> parameter, a token is returned in the response.
Use that token in the <code>nextToken</code> parameter to return the
next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      builtInSlotTypeSummaries = list(
        list(
          slotTypeSignature = "string",
          description = "string"
        )
      ),
      nextToken = "string",
      localeId = "string"
    )

### Request syntax

    svc$list_built_in_slot_types(
      localeId = "string",
      sortBy = list(
        attribute = "SlotTypeSignature",
        order = "Ascending"|"Descending"
      ),
      maxResults = 123,
      nextToken = "string"
    )
