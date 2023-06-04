<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarnotifications_subscribe</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an association between a notification rule and an Chatbot topic or Chatbot client so that the associated target can receive notifications when the events described in the rule are triggered

### Description

Creates an association between a notification rule and an Chatbot topic
or Chatbot client so that the associated target can receive
notifications when the events described in the rule are triggered.

### Usage

    codestarnotifications_subscribe(Arn, Target, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestarnotifications_subscribe_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the notification
rule for which you want to create the association.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarnotifications_subscribe_:_Target">Target</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="codestarnotifications_subscribe_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>An enumeration token that, when provided in a request, returns
the next batch of the results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$subscribe(
      Arn = "string",
      Target = list(
        TargetType = "string",
        TargetAddress = "string"
      ),
      ClientRequestToken = "string"
    )
