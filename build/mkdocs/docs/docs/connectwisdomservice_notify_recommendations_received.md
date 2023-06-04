<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_notify_recommendations_received</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified recommendations from the specified assistant's queue of newly available recommendations

### Description

Removes the specified recommendations from the specified assistant's
queue of newly available recommendations. You can use this API in
conjunction with `get_recommendations` and a `waitTimeSeconds` input for
long-polling behavior and avoiding duplicate recommendations.

### Usage

    connectwisdomservice_notify_recommendations_received(assistantId,
      recommendationIds, sessionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_notify_recommendations_received_:_assistantId">assistantId</code></td>
<td><p>[required] The identifier of the Wisdom assistant. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_notify_recommendations_received_:_recommendationIds">recommendationIds</code></td>
<td><p>[required] The identifiers of the recommendations.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_notify_recommendations_received_:_sessionId">sessionId</code></td>
<td><p>[required] The identifier of the session. Can be either the ID or
the ARN. URLs cannot contain the ARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      errors = list(
        list(
          message = "string",
          recommendationId = "string"
        )
      ),
      recommendationIds = list(
        "string"
      )
    )

### Request syntax

    svc$notify_recommendations_received(
      assistantId = "string",
      recommendationIds = list(
        "string"
      ),
      sessionId = "string"
    )
