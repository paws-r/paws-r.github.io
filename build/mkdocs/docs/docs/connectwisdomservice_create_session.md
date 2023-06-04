<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_create_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a session

### Description

Creates a session. A session is a contextual container used for
generating recommendations. Amazon Connect creates a new Wisdom session
for each contact on which Wisdom is enabled.

### Usage

    connectwisdomservice_create_session(assistantId, clientToken,
      description, name, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_create_session_:_assistantId">assistantId</code></td>
<td><p>[required] The identifier of the Wisdom assistant. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_create_session_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_create_session_:_description">description</code></td>
<td><p>The description.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_create_session_:_name">name</code></td>
<td><p>[required] The name of the session.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_create_session_:_tags">tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource.</p></td>
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

    svc$create_session(
      assistantId = "string",
      clientToken = "string",
      description = "string",
      name = "string",
      tags = list(
        "string"
      )
    )
