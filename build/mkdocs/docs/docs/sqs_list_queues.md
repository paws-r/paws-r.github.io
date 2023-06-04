<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs_list_queues</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of your queues in the current region

### Description

Returns a list of your queues in the current region. The response
includes a maximum of 1,000 results. If you specify a value for the
optional `QueueNamePrefix` parameter, only queues with a name that
begins with the specified value are returned.

The `listQueues` methods supports pagination. Set parameter `MaxResults`
in the request to specify the maximum number of results to be returned
in the response. If you do not set `MaxResults`, the response includes a
maximum of 1,000 results. If you set `MaxResults` and there are
additional results to display, the response includes a value for
`NextToken`. Use `NextToken` as a parameter in your next request to
`listQueues` to receive the next page of results.

Cross-account permissions don't apply to this action. For more
information, see [Grant cross-account permissions to a role and a user
name](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-basic-examples-of-sqs-policies.html#grant-cross-account-permissions-to-role-and-user-name)
in the *Amazon SQS Developer Guide*.

### Usage

    sqs_list_queues(QueueNamePrefix, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sqs_list_queues_:_QueueNamePrefix">QueueNamePrefix</code></td>
<td><p>A string to use for filtering the list results. Only those queues
whose name begins with the specified string are returned.</p>
<p>Queue URLs and names are case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code id="sqs_list_queues_:_NextToken">NextToken</code></td>
<td><p>Pagination token to request the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code id="sqs_list_queues_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to include in the response. Value range
is 1 to 1000. You must set <code>MaxResults</code> to receive a value
for <code>NextToken</code> in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueueUrls = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_queues(
      QueueNamePrefix = "string",
      NextToken = "string",
      MaxResults = 123
    )
