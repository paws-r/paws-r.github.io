<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync_get_cognito_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the events and the corresponding Lambda functions associated with an identity pool

### Description

Gets the events and the corresponding Lambda functions associated with
an identity pool.

This API can only be called with developer credentials. You cannot call
this API with the temporary user credentials provided by Cognito
Identity.

### Usage

    cognitosync_get_cognito_events(IdentityPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitosync_get_cognito_events_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] The Cognito Identity Pool ID for the request</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Events = list(
        "string"
      )
    )

### Request syntax

    svc$get_cognito_events(
      IdentityPoolId = "string"
    )
