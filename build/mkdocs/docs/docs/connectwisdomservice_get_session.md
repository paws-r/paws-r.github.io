<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_get_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information for a specified session

### Description

Retrieves information for a specified session.

### Usage

    connectwisdomservice_get_session(assistantId, sessionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_get_session_:_assistantId">assistantId</code></td>
<td><p>[required] The identifier of the Wisdom assistant. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_get_session_:_sessionId">sessionId</code></td>
<td><p>[required] The identifier of the session. Can be either the ID or
the ARN. URLs cannot contain the ARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      session = list(
        description = "string",
        name = "string",
        sessionArn = "string",
        sessionId = "string",
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_session(
      assistantId = "string",
      sessionId = "string"
    )
