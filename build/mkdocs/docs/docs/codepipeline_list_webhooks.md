<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_list_webhooks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a listing of all the webhooks in this Amazon Web Services Region for this account

### Description

Gets a listing of all the webhooks in this Amazon Web Services Region
for this account. The output lists all webhooks and includes the webhook
URL and ARN and the configuration for each webhook.

### Usage

    codepipeline_list_webhooks(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_list_webhooks_:_NextToken">NextToken</code></td>
<td><p>The token that was returned from the previous ListWebhooks call,
which can be used to return the next set of webhooks in the
list.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_list_webhooks_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single call. To
retrieve the remaining results, make another call with the returned
nextToken value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      webhooks = list(
        list(
          definition = list(
            name = "string",
            targetPipeline = "string",
            targetAction = "string",
            filters = list(
              list(
                jsonPath = "string",
                matchEquals = "string"
              )
            ),
            authentication = "GITHUB_HMAC"|"IP"|"UNAUTHENTICATED",
            authenticationConfiguration = list(
              AllowedIPRange = "string",
              SecretToken = "string"
            )
          ),
          url = "string",
          errorMessage = "string",
          errorCode = "string",
          lastTriggered = as.POSIXct(
            "2015-01-01"
          ),
          arn = "string",
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_webhooks(
      NextToken = "string",
      MaxResults = 123
    )
