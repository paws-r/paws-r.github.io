<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_builtin_intents</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of built-in intents that meet the specified criteria

### Description

Gets a list of built-in intents that meet the specified criteria.

This operation requires permission for the `lex:GetBuiltinIntents`
action.

### Usage

    lexmodelbuildingservice_get_builtin_intents(locale, signatureContains,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_builtin_intents_:_locale">locale</code></td>
<td><p>A list of locales that the intent supports.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_builtin_intents_:_signatureContains">signatureContains</code></td>
<td><p>Substring to match in built-in intent signatures. An intent will
be returned if any part of its signature matches the substring. For
example, "xyz" matches both "xyzabc" and "abcxyz." To find the signature
for an intent, see <a
href="https://developer.amazon.com/en-US/docs/alexa/custom-skills/standard-built-in-intents.html">Standard
Built-in Intents</a> in the <em>Alexa Skills Kit</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_builtin_intents_:_nextToken">nextToken</code></td>
<td><p>A pagination token that fetches the next page of intents. If this
API call is truncated, Amazon Lex returns a pagination token in the
response. To fetch the next page of intents, use the pagination token in
the next request.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_builtin_intents_:_maxResults">maxResults</code></td>
<td><p>The maximum number of intents to return in the response. The
default is 10.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      intents = list(
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

    svc$get_builtin_intents(
      locale = "de-DE"|"en-AU"|"en-GB"|"en-IN"|"en-US"|"es-419"|"es-ES"|"es-US"|"fr-FR"|"fr-CA"|"it-IT"|"ja-JP"|"ko-KR",
      signatureContains = "string",
      nextToken = "string",
      maxResults = 123
    )
