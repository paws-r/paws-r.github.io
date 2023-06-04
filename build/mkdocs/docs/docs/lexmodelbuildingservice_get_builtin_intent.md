<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_builtin_intent</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a built-in intent

### Description

Returns information about a built-in intent.

This operation requires permission for the `lex:GetBuiltinIntent`
action.

### Usage

    lexmodelbuildingservice_get_builtin_intent(signature)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_builtin_intent_:_signature">signature</code></td>
<td><p>[required] The unique identifier for a built-in intent. To find
the signature for an intent, see <a
href="https://developer.amazon.com/en-US/docs/alexa/custom-skills/standard-built-in-intents.html">Standard
Built-in Intents</a> in the <em>Alexa Skills Kit</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      signature = "string",
      supportedLocales = list(
        "de-DE"|"en-AU"|"en-GB"|"en-IN"|"en-US"|"es-419"|"es-ES"|"es-US"|"fr-FR"|"fr-CA"|"it-IT"|"ja-JP"|"ko-KR"
      ),
      slots = list(
        list(
          name = "string"
        )
      )
    )

### Request syntax

    svc$get_builtin_intent(
      signature = "string"
    )
