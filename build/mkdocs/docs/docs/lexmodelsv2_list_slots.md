<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_list_slots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of slots that match the specified criteria

### Description

Gets a list of slots that match the specified criteria.

### Usage

    lexmodelsv2_list_slots(botId, botVersion, localeId, intentId, sortBy,
      filters, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_list_slots_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot that contains the
slot.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_slots_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot that contains the
slot.</p></td>
</tr>
<tr class="odd">
<td><code id="lexmodelsv2_list_slots_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale of the slots
to list. The string must match one of the supported locales. For more
information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_list_slots_:_intentId">intentId</code></td>
<td><p>[required] The unique identifier of the intent that contains the
slot.</p></td>
</tr>
<tr class="odd">
<td><code id="lexmodelsv2_list_slots_:_sortBy">sortBy</code></td>
<td><p>Determines the sort order for the response from the
<code>list_slots</code> operation. You can choose to sort by the slot
name or last updated date in either ascending or descending
order.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_list_slots_:_filters">filters</code></td>
<td><p>Provides the specification of a filter used to limit the slots in
the response to only those that match the filter specification. You can
only specify one filter and only one string to filter on.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_slots_:_maxResults">maxResults</code></td>
<td><p>The maximum number of slots to return in each page of results. If
there are fewer results than the max page size, only the actual number
of results are returned.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_list_slots_:_nextToken">nextToken</code></td>
<td><p>If the response from the <code>list_slots</code> operation
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
      intentId = "string",
      slotSummaries = list(
        list(
          slotId = "string",
          slotName = "string",
          description = "string",
          slotConstraint = "Required"|"Optional",
          slotTypeId = "string",
          valueElicitationPromptSpecification = list(
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            maxRetries = 123,
            allowInterrupt = TRUE|FALSE,
            messageSelectionStrategy = "Random"|"Ordered",
            promptAttemptsSpecification = list(
              list(
                allowInterrupt = TRUE|FALSE,
                allowedInputTypes = list(
                  allowAudioInput = TRUE|FALSE,
                  allowDTMFInput = TRUE|FALSE
                ),
                audioAndDTMFInputSpecification = list(
                  startTimeoutMs = 123,
                  audioSpecification = list(
                    maxLengthMs = 123,
                    endTimeoutMs = 123
                  ),
                  dtmfSpecification = list(
                    maxLength = 123,
                    endTimeoutMs = 123,
                    deletionCharacter = "string",
                    endCharacter = "string"
                  )
                ),
                textInputSpecification = list(
                  startTimeoutMs = 123
                )
              )
            )
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_slots(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      intentId = "string",
      sortBy = list(
        attribute = "SlotName"|"LastUpdatedDateTime",
        order = "Ascending"|"Descending"
      ),
      filters = list(
        list(
          name = "SlotName",
          values = list(
            "string"
          ),
          operator = "CO"|"EQ"
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
