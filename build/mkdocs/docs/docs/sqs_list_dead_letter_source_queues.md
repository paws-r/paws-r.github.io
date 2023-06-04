<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs_list_dead_letter_source_queues</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of your queues that have the RedrivePolicy queue attribute configured with a dead-letter queue

### Description

Returns a list of your queues that have the `RedrivePolicy` queue
attribute configured with a dead-letter queue.

The `list_dead_letter_source_queues` methods supports pagination. Set
parameter `MaxResults` in the request to specify the maximum number of
results to be returned in the response. If you do not set `MaxResults`,
the response includes a maximum of 1,000 results. If you set
`MaxResults` and there are additional results to display, the response
includes a value for `NextToken`. Use `NextToken` as a parameter in your
next request to `list_dead_letter_source_queues` to receive the next
page of results.

For more information about using dead-letter queues, see [Using Amazon
SQS Dead-Letter
Queues](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html)
in the *Amazon SQS Developer Guide*.

### Usage

    sqs_list_dead_letter_source_queues(QueueUrl, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sqs_list_dead_letter_source_queues_:_QueueUrl">QueueUrl</code></td>
<td><p>[required] The URL of a dead-letter queue.</p>
<p>Queue URLs and names are case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="sqs_list_dead_letter_source_queues_:_NextToken">NextToken</code></td>
<td><p>Pagination token to request the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="sqs_list_dead_letter_source_queues_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to include in the response. Value range
is 1 to 1000. You must set <code>MaxResults</code> to receive a value
for <code>NextToken</code> in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      queueUrls = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_dead_letter_source_queues(
      QueueUrl = "string",
      NextToken = "string",
      MaxResults = 123
    )
