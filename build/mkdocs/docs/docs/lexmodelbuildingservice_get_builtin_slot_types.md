<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_builtin_slot_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of built-in slot types that meet the specified criteria

### Description

Gets a list of built-in slot types that meet the specified criteria.

For a list of built-in slot types, see [Slot Type
Reference](https://developer.amazon.com/en-US/docs/alexa/custom-skills/slot-type-reference.html)
in the *Alexa Skills Kit*.

This operation requires permission for the `lex:GetBuiltInSlotTypes`
action.

### Usage

    lexmodelbuildingservice_get_builtin_slot_types(locale,
      signatureContains, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_builtin_slot_types_:_locale">locale</code></td>
<td><p>A list of locales that the slot type supports.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_builtin_slot_types_:_signatureContains">signatureContains</code></td>
<td><p>Substring to match in built-in slot type signatures. A slot type
will be returned if any part of its signature matches the substring. For
example, "xyz" matches both "xyzabc" and "abcxyz."</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_builtin_slot_types_:_nextToken">nextToken</code></td>
<td><p>A pagination token that fetches the next page of slot types. If
the response to this API call is truncated, Amazon Lex returns a
pagination token in the response. To fetch the next page of slot types,
specify the pagination token in the next request.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_builtin_slot_types_:_maxResults">maxResults</code></td>
<td><p>The maximum number of slot types to return in the response. The
default is 10.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      slotTypes = list(
        list(
          signature = "string",
          supportedLocales = list(
            "de-DE"|"en-AU"|"en-GB"|"en-IN"|"en-US"|"es-419"|"es-ES"|"es-US"|"fr-FR"|"fr-CA"|"it-IT"|"ja-JP"|"ko-KR"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_builtin_slot_types(
      locale = "de-DE"|"en-AU"|"en-GB"|"en-IN"|"en-US"|"es-419"|"es-ES"|"es-US"|"fr-FR"|"fr-CA"|"it-IT"|"ja-JP"|"ko-KR",
      signatureContains = "string",
      nextToken = "string",
      maxResults = 123
    )
