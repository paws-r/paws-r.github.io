<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_expire_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Immediately stops the specified streaming session

### Description

Immediately stops the specified streaming session.

### Usage

    appstream_expire_session(SessionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_expire_session_:_SessionId">SessionId</code></td>
<td><p>[required] The identifier of the streaming session.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$expire_session(
      SessionId = "string"
    )
