<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_list_slot_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of slot types that match the specified criteria

### Description

Gets a list of slot types that match the specified criteria.

### Usage

    lexmodelsv2_list_slot_types(botId, botVersion, localeId, sortBy,
      filters, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_list_slot_types_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot that contains the
slot types.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_slot_types_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot that contains the slot
type.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_slot_types_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale of the slot
types to list. The string must match one of the supported locales. For
more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_list_slot_types_:_sortBy">sortBy</code></td>
<td><p>Determines the sort order for the response from the
<code>list_slot_types</code> operation. You can choose to sort by the
slot type name or last updated date in either ascending or descending
order.</p></td>
</tr>
<tr class="odd">
<td><code id="lexmodelsv2_list_slot_types_:_filters">filters</code></td>
<td><p>Provides the specification of a filter used to limit the slot
types in the response to only those that match the filter specification.
You can only specify one filter and only one string to filter
on.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_slot_types_:_maxResults">maxResults</code></td>
<td><p>The maximum number of slot types to return in each page of
results. If there are fewer results than the max page size, only the
actual number of results are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_slot_types_:_nextToken">nextToken</code></td>
<td><p>If the response from the <code>list_slot_types</code> operation
contains more results than specified in the <code>maxResults</code>
parameter, a token is returned in the response. Use that token in the
<code>nextToken</code> parameter to return the next page of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      slotTypeSummaries = list(
        list(
          slotTypeId = "string",
          slotTypeName = "string",
          description = "string",
          parentSlotTypeSignature = "string",
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          slotTypeCategory = "Custom"|"Extended"|"ExternalGrammar"|"Composite"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_slot_types(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      sortBy = list(
        attribute = "SlotTypeName"|"LastUpdatedDateTime",
        order = "Ascending"|"Descending"
      ),
      filters = list(
        list(
          name = "SlotTypeName"|"ExternalSourceType",
          values = list(
            "string"
          ),
          operator = "CO"|"EQ"
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
