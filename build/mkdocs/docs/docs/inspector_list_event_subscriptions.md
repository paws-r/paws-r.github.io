<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_list_event_subscriptions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template

### Description

Lists all the event subscriptions for the assessment template that is
specified by the ARN of the assessment template. For more information,
see `subscribe_to_event` and `unsubscribe_from_event`.

### Usage

    inspector_list_event_subscriptions(resourceArn, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_list_event_subscriptions_:_resourceArn">resourceArn</code></td>
<td><p>The ARN of the assessment template for which you want to list the
existing event subscriptions.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_list_event_subscriptions_:_nextToken">nextToken</code></td>
<td><p>You can use this parameter when paginating results. Set the value
of this parameter to null on your first call to the
<strong>ListEventSubscriptions</strong> action. Subsequent calls to the
action fill <strong>nextToken</strong> in the request with the value of
<strong>NextToken</strong> from the previous response to continue
listing data.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector_list_event_subscriptions_:_maxResults">maxResults</code></td>
<td><p>You can use this parameter to indicate the maximum number of
items you want in the response. The default value is 10. The maximum
value is 500.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      subscriptions = list(
        list(
          resourceArn = "string",
          topicArn = "string",
          eventSubscriptions = list(
            list(
              event = "ASSESSMENT_RUN_STARTED"|"ASSESSMENT_RUN_COMPLETED"|"ASSESSMENT_RUN_STATE_CHANGED"|"FINDING_REPORTED"|"OTHER",
              subscribedAt = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_event_subscriptions(
      resourceArn = "string",
      nextToken = "string",
      maxResults = 123
    )

### Examples

    ## Not run: 
    # Lists all the event subscriptions for the assessment template that is
    # specified by the ARN of the assessment template.
    svc$list_event_subscriptions(
      maxResults = 123L,
      resourceArn = "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX..."
    )

    ## End(Not run)
